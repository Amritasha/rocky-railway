![Rocky Linux](https://img.shields.io/badge/Rocky-Linux%209-10B981?logo=rockylinux)
![Docker](https://img.shields.io/badge/Docker-Supported-blue?logo=docker)

# Deploy and Host Rocky Linux Terminal on Railway

Rocky Linux Terminal is a browser-accessible Rocky Linux 9 shell deployed on Railway via [ttyd](https://github.com/tsl0922/ttyd). Binary-compatible with RHEL 9 — no subscription needed. Comes with EPEL, essential dev tools, and common C/system libraries pre-installed so most native extensions and language runtimes compile out of the box. Password-protected, with persistent storage at `/root`.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/new/template)

## About Hosting Rocky Linux Terminal

Hosting Rocky Linux Terminal on Railway means spinning up a Rocky Linux 9 container with a browser-based terminal exposed via ttyd. Rocky Linux 9 is binary-compatible with RHEL 9, making it ideal for enterprise Linux work without a Red Hat subscription. EPEL is enabled at build time for access to the full RPM ecosystem. The image ships with a curated set of commonly used C libraries — openssl-devel, zlib-devel, libffi-devel, sqlite-devel, readline-devel, ncurses-devel, libxml2-devel, libxslt-devel, postgresql-devel, mariadb-connector-c-devel, libyaml-devel, libpng-devel, libjpeg-devel, and kernel-headers — so most language runtimes and native extensions compile without extra setup. A persistent volume is mounted at `/root` so your files survive restarts.

## Common Use Cases

- RHEL-compatible cloud shell for enterprise developers who need a Red Hat environment without a subscription
- RPM package building and testing in a clean, reproducible Rocky Linux environment
- Learning Red Hat ecosystem tooling — dnf, systemd, SELinux — from any device with a browser

## Dependencies for Rocky Linux Terminal Hosting

- [ttyd](https://github.com/tsl0922/ttyd) — browser-based terminal emulator that serves the shell over HTTP
- [Rocky Linux 9](https://rockylinux.org/) — RHEL 9 binary-compatible base image with EPEL support

### Deployment Dependencies

- [ttyd 1.7.3 x86_64 binary](https://github.com/tsl0922/ttyd/releases/tag/1.7.3)
- [Rocky Linux on Docker Hub](https://hub.docker.com/_/rockylinux)
- [Railway Volumes documentation](https://docs.railway.app/reference/volumes)

## Environment Variables

| Variable | Description |
|----------|-------------|
| `PORT` | Port for ttyd to listen on (set automatically by Railway) |
| `USERNAME` | Login username for the web terminal |
| `PASSWORD` | Login password for the web terminal |

> **Note:** Always set USERNAME and PASSWORD before deploying.

## Pre-installed Tools

| Category | Tools |
|---|---|
| Editors | vim, nano |
| System | htop, tree, lsof, strace, less, man |
| Files | unzip, zip |
| Build | gcc, gcc-c++, make |
| Network | ifconfig, ip, ping, dig, openssh-clients, telnet, ncat |
| Data | jq |
| General | sudo, python3, pip, git, curl, wget, neofetch |
| Libraries | openssl-devel, zlib-devel, libffi-devel, sqlite-devel, readline-devel, ncurses-devel, libxml2-devel, libxslt-devel, postgresql-devel, mariadb-connector-c-devel, libyaml-devel, libpng-devel, libjpeg-devel, kernel-headers |

## Installing More Packages

```bash
dnf install -y <package-name>
```

> **Note:** Files saved inside `/root` persist across restarts. Packages installed via `dnf` will not survive a full redeploy.

## Why Deploy Rocky Linux Terminal on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Rocky Linux Terminal on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
