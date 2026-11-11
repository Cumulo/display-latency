# Display Latency

展示浏览器与原生服务之间的往返延迟。

## Calcit 0.41.0 升级

前端与原生服务使用 Calcit 0.41.0。升级现有实例时，按 `deps.cirru` 安装完整依赖图，
重新构建前端并重启服务。现有 WebSocket 封包、账户存档和部署路径可继续使用。服务端依赖 WSS 0.2.45 与 Std 0.2.55。

登录表单直接使用 `LoginState`，应用分发接收 `UiAction`，延迟列表使用 Respo
的 `ChildPair` 保留每行的稳定键。首次同步没有旧快照时，在 Recollect 调用处
传入协议所需的 `nil`。服务端也在解析入口保留无载荷操作的原有表示。

## 开发

先安装正式 Calcit 0.41.0，并按 [Caps 官方说明](https://github.com/calcit-lang/caps)
独立安装与 CI 一致的 Caps 0.1.1：`cargo install calcit-caps --version 0.1.1 --locked`。
确认 `calcit` 与 `caps` 位于 PATH；Corepack/Yarn 不会安装 Caps。

`calcit.cirru` 是唯一项目 Snapshot，`deps.cirru` 声明精确依赖，不使用
`compact.cirru` / `package.cirru`。按发布 tag 安装完整依赖图：

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

服务端的 storage.cirru 和原备份布局保持。升级运行中的服务前，安装匹配的 CLI、
模块及 native 库并验证隔离数据副本，不能只因前端 COS 校验成功就部署后端。
前端 `VITE_BASE_URL` 本地默认 `./`，CI 使用原生产前缀和独立 PR 前缀。
不提交 `js-out/`、`dist/`、`dist-server/` 或增量通知产物，不发布 npm。

## License

MIT
