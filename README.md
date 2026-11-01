
Display Latency
------

> Small page for display latency between client and server.

The time displayed is the duration between a client emits event and receives event back.

### 正式 0.32.1 迁移候选：使用者影响

本地与 CI 均使用正式 [Calcit CLI0.32.1](https://github.com/calcit-lang/calcit/releases/tag/0.32.1)、
`@calcit/procs`0.32.1、Node24 和 Yarn4.18.0。前后端须一起安装完整依赖图、重启并完整刷新；
不能让新页面连接旧后端。本候选**不合并、不部署、不发版**，生产主机是否准备好仍未确认。
原前端 rsync 和 `/servers/display-latency/` 后端路径、main 部署条件保持。

模块使用已发布精确 Git tag：Reel0.1.0、Util0.0.35、Message0.1.0、UI0.9.0、Respo0.17.1、
JS FFI0.2.9、Recollect0.1.0、WS-EDN0.0.51、Std0.2.47、WSS0.2.40；加上传递Value0.6.0与
UI固定的Router0.9.0-alpha.4共12模块，不单独覆盖配对图，不用main/hash或本地模块替身。

只通过官方事务迁移类型标注语法；86个完整定义视图与规范化基线相同，原10项测试的
名称、tag、断言保持。执行代码、UI/旧Op/匿名Reel操作的受检兼容入口、wire、存档、
计时器、查询/hash保留、reload和原错误处理均未改。renderer的真实开放回调合同保留，
其函数逆变限制已补充到[上游#2499](https://github.com/calcit-lang/calcit/issues/2499#issuecomment-6554604159)，
不为压低Dynamic数字增加类型转接或强转；其余开放状态仍由原decoder收敛。

已通过官方release binary的Caps12模块strict/toolchain、immutable、两入口普通检查与
完整strict（空diagnostics）、公开定义browser60/60和native64/64、原10/10服务端测试、
弃用调用0、dynamic-method0、canonical无变化和前端构建。补齐原配置缺失的60分钟npm隔离，
lock只更新procs及其checksum/rootreference；未启用core-js安装脚本，不新增验证脚本。
真实回环native初始patch已交给本次生成的项目decoder/apply，Unicode ping/pong通过。
本机native副本仅追加公开WSS回环绑定参数，最终源码默认监听和生产路径未改；
未在本机实际启动默认全网卡监听；原Linux CI继续执行两入口检查和测试，不将其声称为默认监听集成验收。
浏览器已验证双访客与刷新重连、console warning/error=[]；登录后计时循环、清空与自动登录仍待
本轮合成账户授权，未计为通过。本地证据不代替精确PR CI和评审，不宣称生产部署已就绪。

### 0.31.0 历史迁移记录


Calcit CLI / `@calcit/procs` 配对正式 **0.31.0**。下游依赖使用已发布的精确 tag：
Cumulo Reel 0.1.0-alpha.2、Util 0.0.33、Message 0.1.0-alpha.3、UI 0.9.0-alpha.4、
Respo 0.17.0-alpha.4、JS-FFI 0.2.7、Recollect 0.1.0-alpha.4、WS-EDN 0.0.49、
calcit.std 0.2.45、calcit-wss 0.2.38；旧 0.30 工具链不能与该图混用。
部署前须准备匹配的 native CLI、依赖及 dylib，并安排服务重启。

UI 的标准派发使用既有 `UiAction`，服务端操作包在 `:server` 中，发送前仍解码回原 `Op`；
旧 Op 与匿名 Reel 操作的受检兼容入口保留，wire 协议和存档格式不变。
迁移 33 处 List/Map 调用；raw 路由恢复的一处更新继续使用公开 `assoc`，保持开放输入合同。
资料页 Refresh 现在保留 pathname、host/port 等现有查询与 hash，只更新 time，避免自定义
后端连接被刷新丢失。登录信息仍按原逻辑保存，reload 和现有错误处理不改。

原双入口检查、10 项服务端测试、完整 strict、弃用调用门禁和 COS 内置校验保留。
CI 补齐 server 入口完整 strict，两个入口均绑定实际 `UiAction`，不放宽类型或基线。
前端 COS 仍仅上传 dist；原前端及 `/servers/display-latency/` 部署路径保持。
合并 main 会按原工作流复制后端源码，故本候选不自动合并或部署。

当前候选已通过正式发布依赖的 Caps strict/immutable 安装、browser 241/native 72 可达定义、
双入口完整 strict（空 diagnostics）、原 10 项服务端测试与前端构建。
隔离 native + 实际浏览器已验证合成注册、错误凭据拒绝后恢复、自动登录、资料导航、
消息移除、延迟循环/清空和 Refresh 保留查询/hash；SIGINT 存档与备份一致，重启恢复通过。
本机为 macOS arm64，native 验收副本仅追加官方 WSS 回环绑定参数，原源树监听默认值不改。
这些记录不代表生产部署已就绪；当前候选的精确远端 CI 和 comments 仍须继续核对。

下文 0.30.1 验收为历史记录，不代替当前候选的精确 CI 和实际联机验收。

### Workflow

https://github.com/Cumulo/cumulo-workflow

### 上一轮 0.30.1 开发与验收记录

Use the exact formal Calcit **0.30.1** in `deps.cirru`, Node 24 and Yarn 4.18.0.
Calcit CLI and `@calcit/procs` must match. Reinstall dependencies, restart the
development service and refresh the browser after upgrading. Module dependencies
use exact formal release tags, never main/hash or an alpha substitute.

本轮正式图使用 Cumulo Reel 0.0.61、Util 0.0.31、Message 0.0.38、UI 0.8.0、
Respo 0.16.124、JS-FFI 0.2.5、Recollect 0.0.67、WS-EDN 0.0.47、
calcit.std 0.2.44 / calcit-wss 0.2.37。UI 0.8 基础样式可能影响外观。
Snapshot 与原 10 项 server 附带测试保持不变，不因版本升级改写业务协议或存档。
正式 Linux 独立验收已通过 browser 241/native 72、双入口完整 strict
（passed 且 diagnostics 为空）、原 10 项测试与前端构建。真实 native 进程与
实际生成的 JS decoder 已回放初始/增量 patch、Unicode ping、非法凭据拒绝后恢复、
合成账户/profile、SIGINT 及存储/备份一致。没有改业务 Snapshot 或原测试。
当前覆盖率为 64 full / 22 partial / 0 none；开放 wire、异构 UI 状态及历史日志
仍按使用处检查，不将声明正式版本等同于类型债务清零。
本地只验收了原构建的离线画面；未启动 native 后端，连接拒绝是该验收的预期结果，
不能据此宣称浏览器/native 全链路、登录后的自动延迟循环已验收。
此次不自动合并或部署：生产后端须先准备匹配的正式 CLI 与 native 依赖。

### 上一轮 alpha.4 迁移记录

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
machine. Their published build scripts now use `cargo build --release --locked`
and install the shared libraries into each module's `dylibs/` directory. Caps
invokes these scripts; CI no longer rebuilds and copies the same libraries again
([std #90](https://github.com/calcit-lang/calcit.std/issues/90),
[WSS #65](https://github.com/calcit-lang/calcit-wss/issues/65)).

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
separate `pr/<number>/<run-id>/<attempt>/` prefix for each PR run's assets. Only frontend `dist/` is uploaded to COS;
the upload action performs its own public-file verification. Neither
`js-out/`, `dist/` nor `dist-server/` belongs in Git.

### License

MIT
