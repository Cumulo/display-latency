# Display Latency

展示浏览器与原生服务之间的往返延迟。

## 0.2.0 候选：使用者影响

使用正式 CLI / `@calcit/procs` **0.34.3**、Node24 和 Yarn4.18.0，前后端须同步
完整依赖图、生成代码并重启/刷新。目标为 Reel0.2.0、Util0.0.38、Message0.2.1、
UI0.14.1、Respo0.19.2、JS-FFI0.2.10、Recollect0.2.2、WS-EDN0.0.54、
Std0.2.50、WSS0.2.42，传递 Value0.7.0 / Router0.11.2。
Reel0.2.0 尚未正式发布；当前使用明确标记的本地候选链接验收，不能作为正式根
Caps strict 已通过的证据，不用 main/hash 或关闭 strict 代替正式 tag。

9 处 DOM 提示改用 RespoEvent，两个输入按名义字段读取并保留 String decoder。
on-submit 返回具体事件签名，renderer 回调收紧为原有 UiAction；组件构建与实际
render/SSR 同处 managed memo frame。9 个 spacer 保持原宽高，一处 nil 文本样式
省略为默认值。原86个定义、原10项附带测试及断言保留，只改7个代码体、5个导入、
2个schema；不增加强转、checker、脚本或放宽类型门禁。

原 UI/旧 Op/匿名 Reel 操作的受检兼容入口、wire、存档、计时器、查询/hash、
reload 和错误展示保持。前端 COS 只上传 dist，原前端 rsync 与
`/servers/display-latency/` 后端路径、main 部署条件不改。

## 开发

`calcit.cirru` 是唯一项目 Snapshot，`deps.cirru` 声明精确依赖，不使用
`compact.cirru` / `package.cirru`。待 Reel 正式 tag 后安装整图：

```sh
corepack enable
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn compile-page
yarn release-page
```

本地开发使用 `yarn watch-page` 与 `yarn vite`。原生服务使用
`calcit --entry server`，watch 模式通过 `-w` 显式启用。
Native Std/WSS 由 Caps 调用已发布的 locked build scripts 构建并安装 dylibs，
不另加重复构建/复制流程。变更前先用当前 `calcit docs agents --contract`、
`query` / `tree` 读取真实节点，Snapshot 写入使用带 revision 的官方事务。

## 验证与部署

原 `.github/workflows/upload.yaml` 保留双入口检查、完整 strict、server测试、
弃用 API、前端构建与 COS 内置 verify：

```sh
calcit --check-only
calcit --entry server --check-only
calcit fix --workflow strict --verify
calcit --entry server fix --workflow strict --verify
calcit --entry server test --tag server --require-match
```

当前候选图双入口完整 strict（diagnostics为空）、原10项server、JS/Vite构建及
双入口 dynamic-method/deprecated 为0。隔离原生服务的初始patch已通过当前客户端
公开decoder/apply，Unicode ping/pong通过；实际访客输入、导航和刷新重连无控制台错误。
仅在临时Snapshot副本追加官方WSS回环绑定字符串，原源码默认监听保持。
本轮未做登录后完整延迟循环、账户/存档恢复或默认全网卡监听验收，不沿用历史结果
冒充当前完整部署许可。正式根依赖与精确远端CI仍待Reel发布，不合并部署本应用。

服务端的 storage.cirru 和原备份布局保持。升级运行中的服务前，安装匹配的 CLI、
模块及 native 库并验证隔离数据副本，不能只因前端 COS 校验成功就部署后端。
前端 `VITE_BASE_URL` 本地默认 `./`，CI 使用原生产前缀和独立 PR 前缀。
不提交 `js-out/`、`dist/`、`dist-server/` 或增量通知产物，不发布 npm。

## License

MIT
