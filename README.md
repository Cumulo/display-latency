
Display Latency
------

> Small page for display latency between client and server.

The time displayed is the duration between a client emits event and receives event back.

### Workflow

https://github.com/Cumulo/cumulo-workflow

### Development

Use the exact Calcit version in `deps.cirru` (currently `0.30.1-alpha.4`), Node 24 and
Yarn 4.12.0. Calcit CLI and `@calcit/procs` must match; this is a published
prerelease pair, not stable Calcit 0.30.1. Module dependencies use exact release tags.

本轮实际配对到 0.30.1-alpha.4，并同步 Cumulo Reel、Recollect、WS-EDN、
Respo/UI/Message 及 Util 的正式模块版本；稳定 0.30.0 消费者不能混用新旧图。
清理 8 个 namespace 的旧 imports `[]` 标记，并将 8 处同实现的旧 `defatom`
声明改为 `defref`，保留初始化表达式、Ref schema 和重载状态行为。两处初始 diff 输入从
`Option<ClientStore>.unwrap-or nil` 改为显式 Some/None 分支：已有值原样使用，
缺失仍用 nil 生成/恢复初始快照，不增加强转、重复解码或业务默认值。

`calcit.cirru` is the canonical source and `deps.cirru` is the module manifest.
The retired `compact.cirru` and `package.cirru` files are no longer used or tracked.

```bash
corepack enable
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn compile-page
yarn release-page
```

`yarn watch-page` uses `calcit calcit.cirru js -w`: JavaScript generation and
watch mode are both explicit. In this CLI, `-w` belongs after the `js`
subcommand; `calcit -w calcit.cirru js` emits once and exits. The configured
default entry is already JS, so `calcit -w calcit.cirru` also selects JS watch,
but the explicit form avoids relying on that entry setting.
After saving structured CLI edits, publish the changed definitions through
`calcit edit inc --changed <namespace/definition>` to notify the running
watcher. Its ignored `.compact-inc.cirru` is a transient change notification,
not the retired `compact.cirru` source format; do not commit either generated JS
or the notification file.

The native server also needs `calcit.std` and `calcit-wss` built on its target
machine. Run `cargo build --release --locked` inside each installed module,
then copy its `libcalcit_std` / `libcalcit_wss` shared library into that module's
`dylibs/` directory (`.so` on Linux, `.dylib` on macOS).

```bash
calcit --check-only
calcit --entry server --check-only
calcit fix --workflow strict --verify --format edn
calcit --entry server test --tag server --require-match
```

The server reads `storage.cirru` next to the Snapshot and writes backups there.
Back up existing data and validate a copy before upgrading a running server;
the service host must install the matching compiler and native dependencies
before consuming this source. Keep the server deployment at
`/servers/display-latency/`.

迁移在隔离 Snapshot、合成存储与随机本机端口验证过 native 初始 patch、Unicode
ping、非法消息拒绝后恢复、断开、SIGINT 及存储/备份一致；原 10 项 server
附带测试、完整 strict、前端/native 可达定义 241/71 及 JS/Vite 构建通过。
真实浏览器验证双访客人数 1→2、断开与刷新重连后回到 1、Unicode 输入，控制台
无错误。未创建账号或使用生产存储；登录后的自动延迟循环与全部交互尚未验收。
这些本地结果不替代最新 PR CI 和部署主机准备；后端升级仍须先准备匹配的
CLI 与 native 依赖，不因前端 COS 验证成功而自动合并部署。

Frontend builds accept `VITE_BASE_URL`, defaulting to `./` for local use. CI
uses `https://cos-sh.tiye.me/Cumulo/display-latency/` for production and the
separate `pr/<number>/` prefix for each PR's assets. Only frontend `dist/` is uploaded to COS;
the upload action performs its own public-file verification. Neither
`js-out/`, `dist/` nor `dist-server/` belongs in Git.

### License

MIT
