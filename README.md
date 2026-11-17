<p align="center"><img src="assets/banner.svg" alt="D-Bus Name Inspector — List owned D-Bus names with stable tabular output and optional prefix filtering." width="100%"></p>

# D-Bus Name Inspector ✨

> List owned D-Bus names with stable tabular output and optional prefix filtering.

[![CI](https://github.com/MofidChallenge10/dbus-name-inspector/actions/workflows/ci.yml/badge.svg)](https://github.com/MofidChallenge10/dbus-name-inspector/actions/workflows/ci.yml) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) ![Stack](https://img.shields.io/badge/Stack-Bash%205+-informational)

## 🎯 Why this project?

List owned D-Bus names with stable tabular output and optional prefix filtering. It focuses on a narrow operational problem and keeps its output inspectable, deterministic, and suitable for scripts or CI.

## 🚀 Features

- 🧭 Solves the documented use case without a hosted service.
- 🧪 Includes repeatable tests and a runnable example.
- 📄 Supports concise human-readable output; machine-readable output is available where documented.
- 🔒 Avoids changing the target system during inspection.

## ⚡ Quick Start

```bash
chmod +x bin/dbus-name-inspector
./bin/dbus-name-inspector --user --prefix org.freedesktop
```

## 🖥️ Example

```text
NAME                         PID    PROCESS      USER
org.freedesktop.portal.Desktop  812  xdg-desktop-portal  alice
```

## 🗺️ Roadmap

- Add JSON output using a documented optional `jq` dependency.
- Add owner-change watching through `busctl monitor`.
- Add a separate system-bus permission summary.

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Bug reports should include the command, a minimal input fixture, and the observed output. Please do not attach credentials or private production data.

## 📜 License

MIT — see [LICENSE](LICENSE).
