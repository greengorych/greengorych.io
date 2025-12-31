---
title: Reference for WSL folders, files and configuration paths
description: Reference for WSL folders, files and configuration paths for managing WSL, distributions, instances, and cloud-init.
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

The path to the WSLg system distribution is defined by the [`systemDistro`][systemDistro]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### Built-in kernel

An absolute Windows path to the built-in WSL kernel location

``` { .powershell .no-select }
C:\Program Files\WSL\tools\kernel
```

The path to the built-in kernel is defined by the [`kernel`][kernel]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### Built-in kernel modules

An absolute Windows path to the built-in WSL kernel modules location

``` { .powershell .no-select }
C:\Program Files\WSL\tools\modules.vhd
```

The path to the built-in kernel modules is defined by the [`kernelModules`][kernelmodules]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### .wslconfig

An absolute Windows path to the global WSL 2 configuration file.

``` { .powershell .no-select }
C:\Users\<UserName>\.wslconfig
```

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

The path to the instances installation folder is defined by the [`distributionInstallPath`][distributioninstallpath]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### Crash dumps

An absolute Windows path to the default crash dumps folder.

``` { .powershell .no-select }
C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes
```

The path to the crash dumps folder is defined by the [`crashDumpFolder`][crashdumpfolder]{ data-preview } setting in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

### cloud-init

An absolute Windows path to the [`cloud-init`][cloud-init]{ data-preview } configuration files folder.

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

`WSL VM ID` – an unique identifier for each WSL launch.

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

More information about the configuration is available on the reference [wsl.conf][wsl.conf] page.

### wsl-distribution.conf

An absolute Linux path to the per-distribution configuration file.

``` { .sh .no-select }
/etc/wsl-distribution.conf
```

More information about the configuration is available on the reference [wsl-distribution.conf][wsl-distribution.conf] page

### OOBE script

An absolute Linux path to the Out-of-Box Experience script (OOBE script).

``` { .sh .no-select }
/usr/lib/wsl/<oobe-script>
```

Or

``` { .sh .no-select }
/usr/share/wsl/<oobe-script>
```

- The name and the path to the OOBE script location is specific to each distribution family and is defined by the [`command`][command]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview } configuration file.
- More information about the Out-of-Box Experience script is available on the reference [OOBE script][oobe-script] page.

### Start Menu and Windows Terminal icon

An absolute Linux path to the Start Menu and to the Windows Terminal icon.

``` { .sh .no-select }
/usr/lib/wsl/<DistroIcon>.ico
```

Or

``` { .sh .no-select }
/usr/share/wsl/<DistroIcon>.ico
```

The name and the path to the icon location is specific to each distribution family and is defined by the [`icon`][icon]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview } configuration file.

### Windows Terminal profile

An absolute Linux path to the Windows Terminal profile template.

``` { .sh .no-select }
/usr/share/wsl/terminal-profile.json
```

Or

``` { .sh .no-select }
/usr/share/wsl/terminal-profile.json
```

The path to the `terminal-profile.json` location is specific to each distribution family and is defined by the [`ProfileTemplate`][ProfileTemplate]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview } configuration file.

### cloud-init

An absolute Linux path to the [`cloud-init`][cloud-init]{ data-preview } WSL data-source configuration file.

``` { .sh .no-select }
/etc/cloud/cloud.cfg.d/99_wsl.cfg
```

By default, the [`cloud-init`][cloud-init]{ data-preview } data source configuration file is present only in Ubuntu family distributions.

## Summary table

| Location | Path                                                                             | Description                                |
| -------- | -------------------------------------------------------------------------------- | ------------------------------------------ |
| Windows  | `C:\Program Files\WSL`                                                           | WSL installation folder                    |
| Windows  | `C:\Program Files\WSL\system.vhd`                                                | Default WSLg diribution location           |
| Windows  | `C:\Program Files\WSL\tools\kernel`                                              | Built-in WSL kernel location               |
| Windows  | `C:\Program Files\WSL\tools\modules.vhd`                                         | Built-in WSL kernel modules location       |
| Windows  | `C:\Users\<UserName>\.wslconfig`                                                 | Global WSL 2 configuration                 |
| Windows  | `C:\Users\<UserName>\.wslgconfig`                                                | Global WSLg configuration                  |
| Windows  | `C:\ProgramData\Microsoft\WSL\.wslgconfig`                                       | Global WSLg configuration (alternative)    |
| Windows  | `C:\Users\<UserName>\AppData\Local\wsl\<Instance ID>`                            | Default instance installation folder       |
| Windows  | `C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes`                             | Default crash dumps folder                 |
| Windows  | `C:\Users\<UserName>\.cloud-init`                                                | `cloud-init` configurations folder         |
| Windows  | `C:\Users\<UserName>\.ubuntupro\`                                                | Ubuntu Pro for WSL configurations folder   |
| Windows  | `C:\Users\<UserName>\AppData\Local\Temp\<WSL VM ID>\swap.vhdx`                   | Default swap file location                 |
| Linux    | `/etc/wsl.conf`                                                                  | Per-instance configuration file            |
| Linux    | `/etc/wsl-distribution.conf`                                                     | Per-distribution configuration             |
| Linux    | `/usr/lib/wsl/<oobe-script>` or `/usr/share/wsl/<oobe-script>`                   | Out-of-Box Experience script               |
| Linux    | `/usr/lib/wsl/<DistroIcon>.ico` or `/usr/share/wsl/<DistroIcon>.ico`             | Start Menu and Windows Terminal icon       |
| Linux    | `/usr/share/wsl/terminal-profile.json` or `/usr/share/wsl/terminal-profile.json` | Windows Terminal profile template          |
| Linux    | `/etc/cloud/cloud.cfg.d/99_wsl.cfg`                                              | `cloud-init` WSL data-source configuration |

[.wslconfig]: wslconfig.md/#wslconfig
[wsl.conf]: wsl-conf.md/#wslconf
[systemDistro]: wslconfig.md/#systemdistro
[kernel]: wslconfig.md/#kernel
[kernelmodules]: wslconfig.md/#kernelmodules
[distributioninstallpath]: wslconfig.md/#distributioninstallpath
[crashdumpfolder]: wslconfig.md/#crashdumpfolder
[cloud-init]: conventions.md/#cloud-init
[wsl-distribution.conf]: wsl-distribution-conf.md/#wsl-distributionconf
[command]: wsl-distribution-conf.md/#command
[oobe-script]: oobe-script.md
[icon]: wsl-distribution-conf.md/#icon
[ProfileTemplate]: wsl-distribution-conf.md/#profiletemplate
