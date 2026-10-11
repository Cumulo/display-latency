
Display Latency
------

> Small page for display latency between client and server.

The time displayed is the duration between a client emits event and receives event back.

### Workflow

https://github.com/Cumulo/cumulo-workflow

### Development

Use the exact Calcit version in `deps.cirru` (currently `0.29.0`), Node 24 and
Yarn 4.12.0. Module dependencies are pinned to published stable releases.

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

The native server also needs `calcit.std` and `calcit-wss` built on its target
machine. Run `cargo build --release --locked` inside each installed module,
then copy its `libcalcit_std` / `libcalcit_wss` shared library into that module's
`dylibs/` directory (`.so` on Linux, `.dylib` on macOS).

```bash
calcit --check-only
calcit --entry server --check-only
calcit --entry server test --tag server --require-match
```

The server reads `storage.cirru` next to the Snapshot and writes backups there.
Back up existing data and validate a copy before upgrading a running server;
the service host must install the matching compiler and native dependencies
before consuming this source. Keep the server deployment at
`/servers/display-latency/`.

Frontend builds accept `VITE_BASE_URL`, defaulting to `./` for local use. CI
uses `https://cos-sh.tiye.me/Cumulo/display-latency/` for production and the
separate `pr/<number>/` prefix for each PR's assets. Only frontend `dist/` is uploaded to COS;
the upload action performs its own public-file verification. Neither
`js-out/`, `dist/` nor `dist-server/` belongs in Git.

### License

MIT
