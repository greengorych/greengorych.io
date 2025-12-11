---
description: >-
  Reference an unofficial ready-to-use WSL distribution list with versions not included in the official manifest, and instructions for enabling and configuring it.
title: Additional WSL distributions list
---

# Additional WSL distributions list

An unofficial, ready-to-use manifest of additional WSL distributions not included in the official list, and instructions for enabling and configuring it.

<!-- more -->

## Distributions list

---

The unofficial, ready-to-use list of additional WSL distributions consists of:

| Distribution            | Architecture |
| ----------------------- | ------------ |
| CentOS Stream 9         | amd64, arm64 |
| CentOS Stream 10        | amd64, arm64 |
| NixOS 25.05             | amd64        |
| Rocky Linux 9.7         | amd64, arm64 |
| Rocky Linux 10.1        | amd64, arm64 |
| Ubuntu 25.04            | amd64, arm64 |
| Ubuntu 25.10            | amd64, arm64 |
| Ubuntu 26.04 Snapshot 1 | amd64, arm64 |

## How to use

---

### Local setup

The manifest can be downloaded from the following link: [distributions.json][distributions.json].

[distributions.json]: https://raw.githubusercontent.com/greengorych/wsl-configs/main/distributions/distributions.json

Then connect it locally using the commands below (run as Administrator):

=== "PowerShell"

    ``` { .powershell .no-select }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name DistributionListUrlAppend `
      -Value "file:///path/to/distributions.json" `
      -Type String -Force
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /t REG_MULTI_SZ ^
    /d "file:///path/to/distributions.json" ^
    /f
    ```

!!! info
    Change `file:///path/to/distributions.json` to real absolute file path.

### Connecting from repository

To connect the configuration from the repository, use the following commands (run as administrator):

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

### Verification

After enabling the list, can check the distributions available for installation using the command:

``` { .powershell .no-select }
wsl --list --online
```

Additional distributions not included in the official manifest should now appear in the output:

``` { .text .no-copy .no-select }
NAME                FRIENDLY NAME
CentOS-Stream-9     CentOS Stream 9
CentOS-Stream-10    CentOS Stream 10
NixOS-25.05         NixOS 25.05
RockyLinux-9.7      Rocky Linux 9.7
RockyLinux-10.1     Rocky Linux 10.1
Ubuntu-25.04        Ubuntu 25.04
Ubuntu-25.10        Ubuntu 25.10
Ubuntu-26.04        Ubuntu 26.04 Snapshot 1
```

### Disabling list

To disable the list, use the following commands (run as administrator):

=== "PowerShell"

    ``` { .powershell .no-select }
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name "DistributionListUrlAppend"  `
      -Force
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /f
    ```
