---
title: WSL development projects
description: Development projects - WSL configuration files, technical documentation and Alpine Linux for WSL.
---

# Projects

This section provides a list of development projects and links to instructions on how to use them.

## Alpine Linux for WSL

---

[Alpine Linux for WSL][alpine-for-wsl] - a project provides a ready-to-use Alpine Linux distribution for the Windows Subsystem for Linux (WSL).

### Main features

- Based on the official Alpine Linux mini root filesystem.
- Designed for WSL 2.
- OpenRC init system with automatic startup.
- [`cloud-init`][cloud-init]{ data-preview } configured with the WSL data source.
- System logging (dmesg, OpenRC, syslog) with log rotation.
- Built-in task scheduler (cron).

!!! info
    More information about Alpine Linux for WSL and how to install it is available on the [Alpine Linux for WSL][alpine-linux-for-wsl] project page.

## WSL configurations

---

[wsl-configs][wsl-configs] – a repository containing a curated collection of configuration files for Windows Subsystem for Linux (WSL).

### Main configurations

- [`.wslconfig`][.wslconfig] – a fully documented global WSL 2 configuration file.
- [`wsl.conf`][wsl.conf] – a fully documented per-instance configuration file used by both WSL 1 and WSL 2 instances.
- [`wsl-distribution.conf`][wsl-distribution.conf] – a fully documented per-distribution configuration file.
- `distributions.json` – a manifest template used to add additional WSL distributions.

### Additional configurations

- [`distributions`][distributions] – an unofficial, ready-to-use registerable manifest with additional WSL distributions.

!!! info
    More information about configuration files for WSL is available on the [WSL configurations][WSL configurations] project page.

[alpine-for-wsl]: https://github.com/greengorych/alpine-for-wsl
[cloud-init]: ../reference/conventions.md/#cloud-init
[alpine-linux-for-wsl]: alpine-linux-for-wsl.md
[.wslconfig]: ../reference/wslconfig.md
[wsl.conf]: ../reference/wsl-conf.md
[wsl-distribution.conf]: ../reference/wsl-distribution-conf.md
[distributions]: ../reference/distributions-list.md
[wsl-configs]: https://github.com/greengorych/wsl-configs
[WSL configurations]: wsl-configurations.md
