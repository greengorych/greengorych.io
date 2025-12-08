---
description: >-
  Reference for WSL folders and configuration paths for managing WSL, distributions, instances, and cloud-init.
title: >-
  Reference for WSL folders and configuration paths
---

# Paths

This section provides all WSL-related folders and configuration paths in Windows and Linux.

## Windows

---

This subsection describes all folders and configuration paths used by WSL environment in Windows.

### .wslconfig

An absolute Windows path to the global WSL 2 configuration file.


``` { .batch .no-select }
C:\Users\<UserName>\.wslconfig
```

### .wslgconfig

An absolute Windows path to the WSLg configuration file.

``` { .batch .no-select }
C:\Users\<UserName>\.wslgconfig
```

An absolute Windows path to the WSLg configuration file (alternative path).

``` { .batch .no-select }
C:\ProgramData\Microsoft\wsl\.wslgconfig
```

### Instance

An absolute Windows path to the default instance installation folder.

``` { .baych .no-select }
C:\Users\<UserName>\AppData\Local\wsl\<Distribution ID>
```

### Crash dumps

An absolute Windows path to the default crash dumps folder.

``` { .batch .no-select }
C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes
```

### cloud-init

An absolute Windows path to the `cloud-init` configuration files folder.

``` { .batch .no-select }
C:\Users\<UserName>\.cloud-init
```

### Ubuntu Pro for WSL

An absolute Windows path to the Ubuntu Pro for WSL configuration files and logs folder.

``` { .batch .no-select }
C:\Users\<UserName>\.ubuntupro
```

### swap

An absolute Windows path to the default swap file location.

``` { .batch .no-select }
C:\Users\<UserName>\AppData\Local\Temp\<WSL VM ID>\swap.vhdx
```

!!! info
    To get the `<WSL VM ID>`, use `wslinfo --vm-id` within the instance

## Linux

---

This subsection describes all folders and configuration paths used by WSL environment in Linux.

### wsl.conf

An absolute Linux path to the per-instance configuration file.

``` { .sh .no-select }
/etc/wsl.conf
```

### wsl-distribution.conf

An absolute Linux path to the per-distribution configuration file.

``` { .sh .no-select }
/etc/wsl-distribution.conf
```

### OOBE script

An absolute Linux path to the Out-of-Box Experience script (OOBE script).

``` { .sh .no-select }
/usr/lib/wsl/<oobe-script>
```

!!! info
    - The path to the OOBE script location is specific to each distribution family and is defined by the [`oobe.command`][oobe.command]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview }  configuration file.
    - More information about the Out-of-Box Experience script is available on the reference [OOBE script][oobe-script] page.

[wsl-distribution.conf]: wsl-distribution-conf.md/#wsl-distributionconf
[oobe.command]: wsl-distribution-conf.md/#command
[oobe-script]: oobe-script.md

### Start Menu and Windows Terminal icon

An absolute Linux path to the Start Menu and to the Windows Terminal icon.

``` { .sh .no-select }
/usr/share/wsl/<DistroIcon>.ico
```

!!! info
    The path to the icon location is specific to each distribution family and is defined by the [`shortcut.icon`][shortcut.icon]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview }  configuration file.

[wsl-distribution.conf]: wsl-distribution-conf.md/#wsl-distributionconf
[shortcut.icon]: wsl-distribution-conf.md/#icon

### Windows Terminal profile

An absolute Linux path to the Windows Terminal profile template.

``` { .sh .no-select }
/usr/share/wsl/terminal-profile.json
```

!!! info
    The path to the `terminal-profile.json` location is specific to each distribution family and is defined by the [`windowsterminal.ProfileTemplate`][windowsterminal.ProfileTemplate]{ data-preview } setting in the [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview }  configuration file.

[wsl-distribution.conf]: wsl-distribution-conf.md/#wsl-distributionconf
[windowsterminal.ProfileTemplate]: wsl-distribution-conf.md/#profiletemplate

### cloud-init

An absolute Linux path to the `cloud-init` WSL data-source configuration file.

``` { .sh .no-select }
/etc/cloud/cloud.cfg.d/99_wsl.cfg
```

## Summary table

| Location | Path                                                           | Description                                |
| -------- | -------------------------------------------------------------- | ------------------------------------------ |
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
    `<UserName>`is username of the current Windows user.
