![Rocky Linux](https://img.shields.io/badge/Rocky-Linux%209-10B981?logo=rockylinux)
![Docker](https://img.shields.io/badge/Docker-Supported-blue?logo=docker)

# Rocky Linux 9 Terminal on Railway

A browser-accessible Rocky Linux 9 terminal deployed on Railway using [ttyd](https://github.com/tsl0922/ttyd). RHEL-compatible cloud terminal for enterprise developers.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/new/template)

## Description

Deploys a Rocky Linux 9 container accessible from any browser. Binary-compatible with RHEL 9 — perfect for enterprise devs who need a Red Hat environment without a subscription. Persistent volume mounted at `/root`.

## Environment Variables

| Variable | Description |
|----------|-------------|
| `PORT` | Port for ttyd to listen on (default: 7681) |
| `USERNAME` | Login username for the web terminal |
| `PASSWORD` | Login password for the web terminal |

> **Note:** Always set USERNAME and PASSWORD before deploying.

## Features

- 🪨 Rocky Linux 9 (RHEL 9 compatible)
- 🔒 Password-protected web terminal
- 💾 Persistent volume mounted at `/root`
- 💻 Neofetch on login
- 🏢 EPEL repository enabled
- 🛠️ Pre-installed tools:

| Category | Tools |
|---|---|
| Editors | vim, nano |
| System | htop, tree, lsof, strace, less, man |
| Files | unzip, zip |
| Build | gcc, gcc-c++, make |
| Network | ifconfig, ip, ping, dig, openssh-clients, telnet, ncat |
| Data | jq |
| General | sudo, python3, pip, git, curl, wget, neofetch |

## Installing More Packages

```bash
dnf install -y <package-name>
```

> **Note:** Files saved inside `/root` persist across restarts. Packages installed via `dnf` will not survive a full redeploy.

## Use Cases

- RHEL-compatible cloud terminal without a subscription
- Enterprise Linux development and testing
- RPM package building and testing
- Learning Red Hat ecosystem tooling
