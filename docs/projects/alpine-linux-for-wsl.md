---
title: Alpine Linux for WSL
description: A project provides a ready-to-use Alpine Linux distribution for Windows Subsystem for Linux (WSL).
---

# Alpine Linux for WSL

[Alpine Linux for WSL][alpine-for-wsl] - a project provides a ready-to-use Alpine Linux distribution for the Windows Subsystem for Linux (WSL).

## Features

---

- Based on the official Alpine Linux mini root filesystem.
- Designed for WSL 2.
- OpenRC init system with automatic startup.
- [`cloud-init`][cloud-init]{ data-preview } configured with the WSL data source.
- System logging (dmesg, OpenRC, syslog) with log rotation.
- Built-in task scheduler (cron).


## Requirements

---

- Windows 10 version 1903 or newer, or Windows 11
- Windows Subsystem for Linux (WSL 2).

## Installation options

---

### Manual installation

Download the distribution for your architecture and install it by double-clicking the file.

### Manual installation with commands

Download the image for your architecture and install it with:

``` { .powershell .no-select }
wsl --install --from-file C:\Users\<UserName>\Download\alpine-3.23.2-4-x86_64.wsl
```

### Using an additional WSL distributions list

You can also install Alpine from an unofficial community list of additional WSL distributions.

To register the list, run the following commands as Administrator.

=== "PowerShell"

    ``` { .powershell .no-select }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name DistributionListUrlAppend `
      -Value "https://raw.githubusercontent.com/greengorych/wsl-configs/main/distributions/distributions.json" `
      -Type String -Force
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /t REG_MULTI_SZ ^
    /d "https://raw.githubusercontent.com/greengorych/wsl-configs/main/distributions/distributions.json" ^
    /f
    ```

After adding the list, view available distributions:

``` { .powershell .no-select }
wsl --list --online
```

If Alpine appears in the list, install it with:

``` { .powershell .no-select }
wsl --install Alpine
```

!!! info
    More information about an additional WSL distribution list are available on the [Additional WSL distributions list][additional-wsl-distributions-list] page.

[alpine-for-wsl]: https://github.com/greengorych/alpine-for-wsl
[cloud-init]: ../reference/conventions.md/#cloud-init
[additional-wsl-distributions-list]: additional-wsl-distributions-list.md
