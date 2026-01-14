---
title: Additional WSL distributions list
description: Reference an unofficial ready-to-use WSL distribution list with versions not included in the official manifest, and instructions for enabling and configuring it.
---

# Additional WSL distributions list

An unofficial, ready-to-use manifest of additional WSL distributions not included in the official list, and instructions for enabling and configuring it.

<!-- more -->

## Distributions list

---

The unofficial, ready-to-use list of additional WSL distributions consists of:

| Distribution Family Name | Distribution Name | Distribution Friendly Name | Architecture | Default |
| ------------------------ | ------------------| -------------------------- | ------------ | ------- |
| Alpine                   | Alpine-3.23.2     | Alpine 3.23.2              | amd64, arm64 | true    |
| CentOS                   | CentOS-Stream-9   | CentOS Stream 9            | amd64, arm64 | false   |
| CentOS                   | CentOS-Stream-10  | CentOS Stream 10           | amd64, arm64 | true    |
| NixOS                    | NixOS-25.05       | NixOS 25.05                | amd64        | true    |
| Rocky                    | Rocky-Linux-9.7   | Rocky Linux 9.7            | amd64, arm64 | false   |
| Rocky                    | Rocky-Linux-10.1  | Rocky Linux 10.1           | amd64, arm64 | true    |
| Ubuntu                   | Ubuntu-25.04      | Ubuntu 25.04               | amd64, arm64 | false   |
| Ubuntu                   | Ubuntu-25.10      | Ubuntu 25.10               | amd64, arm64 | false   |
| Ubuntu                   | Ubuntu-26.04      | Ubuntu-26.04 Snapshot 2    | amd64, arm64 | false   |


## Description

---

### Distribution Family Name

The name of the distribution family is used to install the distribution of the family specified as default.

Example of installing a distribution using a family name:

``` { .powershell .no-select}
wsl --install CentOS
```

Installs CentOS Stream 10, which is specified as the default for the entire family.

!!! info
    If specify Ubuntu as the distribution family name during installation, Ubuntu 24.04 LTS, which is specified as the default in the main list of distributions, will be installed.

### Distribution Name

The name of the specific distribution used for installation.

Example of installing a specific distribution:

``` { .powershell .no-select}
wsl --install Rocky-Linux-9.7
```

Install Rocky Linux 9.7.

### Distribution Friendly Name

Distribution Friendly Name is a user-friendly and convenient name of the distribution.

### Architecture

Architecture shows the availability of the distribution for the specified processor architecture type: amd64 and arm64. During installation, the distribution corresponding to the processor architecture will be selected.

### Default

The default distribution for the entire distribution family. Specifies the distribution that will be installed when using the distribution family name in the installation command:

``` { .powershell .no-select}
wsl --install <Distribution Family Name>
```

## How to use

---

### Local registeration

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

### Registration from repository

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

After registering the list, the distributions available for installation can be checked using the command:

``` { .powershell .no-select }
wsl --list --online
```

Additional distributions not included in the official manifest should now appear in the output:

``` { .text .no-copy .no-select }
NAME                FRIENDLY NAME
Alpine-3.23.2       Alpine 3.23.2
CentOS-Stream-9     CentOS Stream 9
CentOS-Stream-10    CentOS Stream 10
NixOS-25.05         NixOS 25.05
RockyLinux-9.7      Rocky Linux 9.7
RockyLinux-10.1     Rocky Linux 10.1
Ubuntu-25.04        Ubuntu 25.04
Ubuntu-25.10        Ubuntu 25.10
Ubuntu-26.04        Ubuntu 26.04 Snapshot 1
```

### Unregistering

To disable the list, use the following commands (run as administrator):

=== "PowerShell"

    ``` { .powershell .no-select }
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name "DistributionListUrlAppend" `
      -Force
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /f
    ```
