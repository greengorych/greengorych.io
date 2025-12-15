---
description: >-
  Reference for WSL folders, files and configuration paths for managing WSL, distributions, instances, and cloud-init.
title: >-
  Reference for WSL folders, files and configuration paths
---

# Paths

This section provides all WSL-related folders, files and configuration paths in Windows and Linux.

## Windows

---

This subsection describes all folders, files and configuration paths used by WSL environment in Windows.

### WSL

An absolute Windows path to the WSL installation folder.

``` { .powershell .no-select }
C:\Program Files\WSL
```

### WSLg distribution

An absolute Windows path to the default WSLg diribution location.

``` { .powershell .no-select }
C:\Program Files\WSL\system.vhd
```

!!! info
    The path to the WSLg system distribution is defined by the [`wsl2.systemDistro`][wsl2.systemDistro]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### Built-in kernel

An absolute Windows path to the built-in WSL kernel location

``` { .powershell .no-select }
C:\Program Files\WSL\tools\kernel
```

!!! info
    The path to the built-in kernel is defined by the [`wsl2.kernel`][wsl2.kernel]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### Built-in kernel modules

An absolute Windows path to the built-in WSL kernel modules location

``` { .powershell .no-select }
C:\Program Files\WSL\tools\modules.vhd
```
!!! info
    The path to the built-in kernel modules is defined by the [`wsl2.kernelModules`][wsl2.kernelmodules]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### .wslconfig

An absolute Windows path to the global WSL 2 configuration file.

``` { .powershell .no-select }
C:\Users\<UserName>\.wslconfig
```

!!! info
    More information about the configuration is available on the reference [.wslconfig][.wslconfig] page.

### .wslgconfig

An absolute Windows path to the WSLg configuration file.

``` { .powershell .no-select }
C:\Users\<UserName>\.wslgconfig
```
An absolute Windows path to the WSLg configuration file (alternative path).

``` { .powershell .no-select }
C:\ProgramData\Microsoft\wsl\.wslgconfig
```

### Instance

An absolute Windows path to the default instance installation folder.

``` { .powershell .no-select }
C:\Users\<UserName>\AppData\Local\wsl\<Distribution ID>
```
!!! info
    The path to the instances installation folder is defined by the [`general.distributionInstallPath`][general.distributioninstallpath]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### Crash dumps

An absolute Windows path to the default crash dumps folder.

``` { .powershell .no-select }
C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes
```
!!! info
    The path to the crash dumps folder is defined by the [`wsl2.crashDumpFolder`][wsl2.crashdumpfolder]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### cloud-init

An absolute Windows path to the `cloud-init` configuration files folder.

``` { .powershell .no-select }
C:\Users\<UserName>\.cloud-init
```

### Ubuntu Pro for WSL

An absolute Windows path to the Ubuntu Pro for WSL configuration files and logs folder.

``` { .powershell .no-select }
C:\Users\<UserName>\.ubuntupro
```

### swap

An absolute Windows path to the default swap file location.

``` { .powershell .no-select }
C:\Users\<UserName>\AppData\Local\Temp\<WSL VM ID>\swap.vhdx
```

!!! info
    `WSL VM ID` – an unique identifier for each WSL launch.

!!! tip
    To get the `WSL VM ID`, use this command within the instance:
    ``` { .sh .no-select }
    wslinfo --vm-id
    ```

## Linux

---

This subsection describes all folders and configuration paths used by WSL environment in Linux.

### wsl.conf

An absolute Linux path to the per-instance configuration file.

``` { .sh .no-select }
/etc/wsl.conf
```
!!! info
    More information about the configuration is available on the reference [wsl.conf][wsl.conf] page.

### wsl-distribution.conf

An absolute Linux path to the per-distribution configuration file.

``` { .sh .no-select }
/etc/wsl-distribution.conf
```

!!! info
    More information about the configuration is available on the reference [wsl-distribution.conf][wsl-distribution.conf] page

### OOBE script

An absolute Linux path to the Out-of-Box Experience script (OOBE script).

``` { .sh .no-select }
/usr/lib/wsl/<oobe-script>
```

!!! info
    - The path to the OOBE script location is specific to each distribution family and is defined by the [`oobe.command`][oobe.command]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview } configuration file.
    - More information about the Out-of-Box Experience script is available on the reference [OOBE script][oobe-script] page.

### Start Menu and Windows Terminal icon

An absolute Linux path to the Start Menu and to the Windows Terminal icon.

``` { .sh .no-select }
/usr/share/wsl/<DistroIcon>.ico
```

!!! info
    The path to the icon location is specific to each distribution family and is defined by the [`shortcut.icon`][shortcut.icon]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview } configuration file.

### Windows Terminal profile

An absolute Linux path to the Windows Terminal profile template.

``` { .sh .no-select }
/usr/share/wsl/terminal-profile.json
```

!!! info
    The path to the `terminal-profile.json` location is specific to each distribution family and is defined by the [`windowsterminal.ProfileTemplate`][windowsterminal.ProfileTemplate]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview } configuration file.

### cloud-init

An absolute Linux path to the `cloud-init` WSL data-source configuration file.

``` { .sh .no-select }
/etc/cloud/cloud.cfg.d/99_wsl.cfg
```

!!! info
    By default, the `cloud-init` data source configuration file is present only in Ubuntu family distributions.

## Summary table

| Location | Path                                                           | Description                                |
| -------- | -------------------------------------------------------------- | ------------------------------------------ |
| Windows  | `C:\Program Files\WSL`                                         | WSL installation folder                    |
| Windows  | `C:\Program Files\WSL\system.vhd`                              | Default WSLg diribution location           |
| Windows  | `C:\Program Files\WSL\tools\kernel`                            | Built-in WSL kernel location               |
| Windows  | `C:\Program Files\WSL\tools\modules.vhd`                       | Built-in WSL kernel modules location       |
| Windows  | `C:\Users\<UserName>\.wslconfig`                               | Global WSL 2 configuration                 |
| Windows  | `C:\Users\<UserName>\.wslgconfig`                              | Global WSLg configuration                  |
| Windows  | `C:\ProgramData\Microsoft\WSL\.wslgconfig`                     | Global WSLg configuration (alternative)    |
| Windows  | `C:\Users\<UserName>\AppData\Local\wsl\<Instance ID>`          | Default instance installation folder       |
| Windows  | `C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes`           | Default crash dumps folder                 |
| Windows  | `C:\Users\<UserName>\.cloud-init`                              | `cloud-init` configurations folder         |
| Windows  | `C:\Users\<UserName>\.ubuntupro\`                              | Ubuntu Pro for WSL configurations folder   |
| Windows  | `C:\Users\<UserName>\AppData\Local\Temp\<WSL VM ID>\swap.vhdx` | Default swap file location                 |
| Linux    | `/etc/wsl.conf`                                                | Per-instance configuration file            |
| Linux    | `/etc/wsl-distribution.conf`                                   | Per-distribution configuration             |
| Linux    | `/usr/lib/wsl/<oobe-script>`                                   | Out-of-Box Experience script               |
| Linux    | `/usr/share/wsl/<DistroIcon>.ico`                              | Start Menu and Windows Terminal icon       |
| Linux    | `/usr/share/wsl/terminal-profile.json`                         | Windows Terminal profile template          |
| Linux    | `/etc/cloud/cloud.cfg.d/99_wsl.cfg`                            | `cloud-init` WSL data-source configuration |

!!! info
    - `<UserName>` – username of the current Windows user.
    - `WSL VM ID` – an unique identifier for each WSL launch.

[.wslconfig]: wslconfig.md/#wslconfig
[wsl.conf]: wsl-conf.md/#wslconf
[general.distributioninstallpath]: wslconfig.md/#distributioninstallpath
[wsl2.systemDistro]: wslconfig.md/#systemdistro
[wsl2.kernel]: wslconfig.md/#kernel
[wsl2.kernelmodules]: wslconfig.md/#kernelmodules
[wsl2.crashdumpfolder]: wslconfig.md/#crashdumpfolder
[wsl-distribution.conf]: wsl-distribution-conf.md/#wsl-distributionconf
[oobe.command]: wsl-distribution-conf.md/#command
[oobe-script]: oobe-script.md
[shortcut.icon]: wsl-distribution-conf.md/#icon
[windowsterminal.ProfileTemplate]: wsl-distribution-conf.md/#profiletemplate
