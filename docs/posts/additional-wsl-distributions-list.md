---
draft: false
date:
  created: 2025-12-01
  updated: 2025-12-11
authors:
  - greengorych
categories:
  - WSL
description: >-
  Unofficial ready-to-use WSL distribution list with versions missing from the official manifest, plus instructions for enabling and configuring it.
---

# Additional WSL Distributions List

I've been using an additional set of distributions for quite some time to install versions missing from the official manifest, as well as my own custom ones. After the announcement of the release of [Ubuntu 26.04 Snapshot 1][Ubuntu 26.04 Snapshot 1], I expanded the list and published it in the WSL configuration repository — [**wsl-configs**][wsl-configs].

[Ubuntu 26.04 Snapshot 1]: installing-ubuntu-26-04-on-wsl.md
[wsl-configs]: https://github.com/greengorych/wsl-configs

<!-- more -->

## Distributions list

The unofficial, ready-to-use list of additional WSL distributions consists of:

| Distribution            | Architecture |
| ----------------------- | ------------ |
| NixOS 25.05             | amd64        |
| Rocky Linux 9.7         | amd64, arm64 |
| Rocky Linux 10.1        | amd64, arm64 |
| Ubuntu 25.04            | amd64, arm64 |
| Ubuntu 25.10            | amd64, arm64 |
| Ubuntu 26.04 Snapshot 1 | amd64, arm64 |


!!! info
    An updated, additional list of WSL distributions is available in the [Distributions list][distributions-list] section of the Refference


[distributions-list]: ../reference/distributions-list.md

## Local setup

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
    Change `file:///path/to/distributions.json` to real file path.

## Connecting from repository

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

## Verification

After enabling the list, can check the distributions available for installation using the command:

``` { .powershell .no-select }
wsl --list --online
```

Additional distributions not included in the official manifest should now appear in the output:

``` { .text .no-copy .no-select }
NAME                FRIENDLY NAME
NixOS-25.05         NixOS 25.05
RockyLinux-9.7      Rocky Linux 9.7
RockyLinux-10.1     Rocky Linux 10.1
Ubuntu-25.04        Ubuntu 25.04
Ubuntu-25.10        Ubuntu 25.10
Ubuntu-26.04        Ubuntu 26.04 Snapshot 1
```

## Disabling list

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
