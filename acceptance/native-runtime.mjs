import assert from 'node:assert/strict';
import {execFileSync, spawn} from 'node:child_process';
import {copyFile, mkdir, mkdtemp, readFile, symlink, writeFile} from 'node:fs/promises';
import {once} from 'node:events';
import {createServer} from 'node:net';
import {resolve, join} from 'node:path';

const root = process.cwd();
const fixture = await mkdtemp(join(root, '.calcit/native-acceptance-'));
const snapshot = join(fixture, 'calcit.cirru');
await copyFile('calcit.cirru', snapshot);
await copyFile('deps.cirru', join(fixture, 'deps.cirru'));
await symlink(resolve('.calcit'), join(fixture, '.calcit'), 'dir');
await symlink(resolve('node_modules'), join(fixture, 'node_modules'), 'dir');
const run = (...args) => execFileSync('calcit', [snapshot, ...args], {encoding:'utf8', maxBuffer:8*1024*1024});
const storage = join(fixture, 'storage.cirru'), backup = join(fixture, 'backup.cirru');
const operations = [
  ['tree', 'replace', 'app.server/storage-file', '--path', '2', '--input-format', 'json-ast', '--code', JSON.stringify('|'+storage)],
  ['tree', 'replace', 'app.server/get-backup-path!', '--path', '3', '--input-format', 'json-ast', '--code', JSON.stringify('|'+backup)],
];
const args = ['edit', 'transaction', '--code', JSON.stringify(operations), '--format', 'json'];
const preview = JSON.parse(run(...args, '--dry-run'));
run(...args, '--expect-revision', preview.scoped_revision);
const reservation = createServer();
reservation.listen(0, '127.0.0.1');
await once(reservation, 'listening');
const port = reservation.address().port;
await new Promise(resolve => reservation.close(resolve));
const child = spawn('calcit', [snapshot, '--entry', 'server'], {cwd:fixture,
  env:{...process.env, mode:'release', port:String(port)}, stdio:['ignore','pipe','pipe']});
let stdout='', stderr='';
child.stdout.on('data', chunk=>{stdout+=chunk;});
child.stderr.on('data', chunk=>{stderr+=chunk;});
const closed = once(child, 'close');
const timeout = setTimeout(()=>child.kill('SIGKILL'), 60000);
const wait = async (predicate, label) => {
  for(let i=0;i<200;i++){
    if(predicate())return;
    if(child.exitCode!==null)throw Error(`Server exited before ${label}: ${stdout}\n${stderr}`);
    await new Promise(resolve=>setTimeout(resolve,50));
  }
  throw Error(`Timed out: ${label}\n${stdout}\n${stderr}`);
};
let socket;
try {
  await wait(()=>stdout.includes('Server started on port:'), 'native startup');
  const c=await import('../js-out/calcit.core.mjs');
  const schema=await import('../js-out/app.schema.mjs');
  let store=c._PCT_none();
  const pings=[];
  const messages=[];
  socket=new WebSocket(`ws://127.0.0.1:${port}`);
  const opened=new Promise((resolve,reject)=>{socket.addEventListener('open',resolve,{once:true});socket.addEventListener('error',reject,{once:true});});
  socket.addEventListener('message',event=>{
    messages.push(event.data);
    const result=schema.decode_server_packet(c.parse_cirru_edn(event.data,schema.client_wire_classes));
    assert.equal(result.tag.value,'ok');
    const packet=result.get(1);
    if(packet.tag.value==='ping')pings.push(packet.get(1));
    else {
      assert.equal(packet.tag.value,'patch');
      const next=schema.apply_store_patch(store,packet.get(1));
      assert.equal(next.tag.value,'ok');
      store=c._PCT_some(next.get(1));
    }
  });
  await opened;
  await wait(()=>store.tag.value==='some','initial decoded patch');
  assert.equal(store.get(1).get('count'),1);
  assert.equal(store.get(1).get('logged-in?'),false);
  socket.send('{} (:kind :ping) (:data |中文-031-🐈)');
  await wait(()=>pings.includes('中文-031-🐈'),'Unicode ping');
  socket.send('{} (:kind :op) (:op :user/log-in) (:data ([] |ci031-latency 42))');
  socket.send('{} (:kind :ping) (:data |after-rejection)');
  await wait(()=>pings.includes('after-rejection'),'recovery after malformed credentials');
  assert.equal(store.get(1).get('logged-in?'),false);
  socket.send('{} (:kind :op) (:op :user/sign-up) (:data ([] |ci031-latency |synthetic-only))');
  await wait(()=>store.get(1).get('logged-in?')===true,'synthetic account patch');
  assert.equal(store.get(1).get('user').get(1).get('name'),'ci031-latency');
  socket.send('{} (:kind :op) (:op :router/change) (:data ({} (:name :profile)))');
  await wait(()=>store.get(1).get('router').get('name').value==='profile','profile incremental patch');
  socket.close();
  await new Promise(resolve=>socket.addEventListener('close',resolve,{once:true}));
  child.kill('SIGINT');
  const [code,signal]=await closed;
  assert.equal(signal,null,stderr);
  assert.equal(code,0,stderr);
  const persisted=await readFile(storage,'utf8');
  assert.equal(persisted,await readFile(backup,'utf8'));
  assert.match(persisted,/ci031-latency/);
  await mkdir('acceptance/results',{recursive:true});
  await writeFile('acceptance/results/native-runtime.json',JSON.stringify({
    passed:true,initialPatch:true,unicodePing:true,invalidCredentialsRejected:true,
    recoveryPing:true,syntheticSignUp:true,profileIncrementalPatch:true,
    sigintCode:code,storageEqualsBackup:true,messages:messages.length,
    scope:'Isolated Linux CI native process and generated actual JS decoder; host-default listener exercised only on CI runner, never locally; storage/backup redirected only in ignored whole-Snapshot copy.'
  },null,2));
  console.log('Native runtime: initial patch / Unicode / rejection recovery / account / profile / SIGINT / persistence passed');
} finally {
  clearTimeout(timeout);
  if(socket?.readyState===WebSocket.OPEN)socket.close();
  if(child.exitCode===null&&child.signalCode===null){child.kill('SIGINT');await closed;}
}
