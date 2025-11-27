---
draft: false
date:
  created: 2025-11-27
  updated: 2025-11-27
authors:
  - greengorych
categories:
  - Ubuntu
  - WSL
description: >-
  How to install Ubuntu 26.04 in WSL using a custom distribution list, registry settings, and a ready-to-use manifest with additional Linux distributions.
---

# Installing Ubuntu 26.04 in WSL

Last night, Canonical released the first snapshot of its upcoming operating system, codenamed Resolute Raccoon. The list of available distributions in the WSL project's [repository][WSL] traditionally includes only stable, long-term supported versions of Ubuntu. 26.04 will be an LTS, and it will be added to the list in April next year, after the official release.

[WSL]: https://github.com/microsoft/WSL/blob/master/distributions/DistributionInfo.json

<!-- more -->

However, builds of versions newer than the latest LTS release, Ubuntu 24.04, including Ubuntu 26.04 for WSL, are available at [cdimage.ubuntu.com][cdimage.ubuntu.com] and [releases.ubuntu.com][releases.ubuntu.com]. To use them, the distribution must be downloaded and installed manually.

[cdimage.ubuntu.com]: https://cdimage.ubuntu.com/
[releases.ubuntu.com]: https://releases.ubuntu.com/

Creating and connecting a custom distribution list makes it possible to install the latest Ubuntu versions in the same way as any official one, using the standard installation mechanism:

``` bash
wsl --install <DistroName>
```

## Manifest creation

To add Ubuntu 26.04, a JSON manifest must be created, for example `distributions.json`, with the following content:

``` json
{
  "ModernDistributions": {
    "Ubuntu": [
      {
        "Name": "Ubuntu-26.04",
        "FriendlyName": "Ubuntu 26.04",
        "Default": false,
        "Amd64Url": {
          "Url": "https://releases.ubuntu.com/26.04-snapshot1/ubuntu-26.04-wsl-amd64.wsl",
          "Sha256": "c77c9e8a5b0255cd02f5edbcd612663976d995980107ce116b2b61f9244cce79"
        },
        "Arm64Url": {
          "Url": "https://cdimage.ubuntu.com/releases/26.04/snapshot1/ubuntu-26.04-wsl-arm64.wsl",
          "Sha256": "b5cfd80f3f90c4d7c95f680455eda660a1198515abbbe13080be70b274108d09"
        }
      }
    ]
  }
}
```

The file can be saved locally or published in any repository or web resource.

## Manifest registration

The manifest is configured via the following Windows registry key:

``` text { .sh .no-copy }
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss
```

Two values are supported:

- `DistributionListUrl`: replaces the default distribution list
- `DistributionListUrlAppend`: adds additional distributions to the default list

The key is added with the following commands (run as administrator):

=== "PowerShell"

    ``` powershell
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name DistributionListUrlAppend `
      -Value "<URL>" `
      -Type String -Force
    ```

=== "Command Prompt"

    ``` batch
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /t REG_MULTI_SZ ^
    /d "<URL>" ^
    /f
    ```

!!! info
		Replace `<URL>` with the actual file path.

Example:

```
https://greengorych.io/distributions.json
```

Or local:

```
file:///C:/Users/<UserName>/distributions.json
```

After adding the registry key, the list of distributions can be checked with:

``` powershell
wsl -l -o
```

## Ready-to-use manifest

A ready-to-use manifest with additional distributions is available in the [wsl-configs](https://github.com/greengorych/wsl-configs) repository.

Added distributions:

- Rocky Linux 10.1
- Ubuntu 25.04
- Ubuntu 25.10
- Ubuntu 26.04 (Snapshot 1)

[wsl-configs]: https://github.com/greengorych/wsl-configs

The file can be downloaded and connected locally or from the repository using the command (run as administrator):

=== "PowerShell"

    ``` powershell
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name DistributionListUrlAppend `
      -Value "https://raw.githubusercontent.com/greengorych/wsl-configs/main/distributions/distributions.json" `
      -Type String -Force
    ```

=== "Command Prompt"

    ``` batch
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /t REG_MULTI_SZ ^
    /d "https://raw.githubusercontent.com/greengorych/wsl-configs/main/distributions/distributions.json" ^
    /f
    ```
