---
draft: false
date:
  created: 2025-12-12
authors:
  - greengorych
categories:
  - WSL
description: >-
    Keeping the system clean by managing WSL crash dumps and swap files.
---

# Keeping System Clean: Crash Dumps and Orphaned SWAPs

I have already written about configuring [crash dumps][wsl-logging-settings-and-their-purpose] and [swap files][wsl-hardware-resources-management] in my reviews of the [`.wslconfig`][.wslconfig]{ data-preview} configuration file and I would like to highlight them from a different perspective. Using WSL, like any other system, involves not only installation and configuration, but also maintenance. For example, archiving and rotating logs in Linux helps conserve disk space to prevent it from becoming overloaded with data. WSL also requires some attention for maintenance.

[wsl-logging-settings-and-their-purpose]: wsl-logging-settings-and-their-purpose.md
[wsl-hardware-resources-management]: wsl-hardware-resources-management.md
[.wslconfig]: ../reference/wslconfig.md/#wslconfig

<!-- more -->

## Crash dumps

The WSL GitHub repository contains several closed issues where crash dumps were taking up significant space on the Windows system drive. Despite the 10-dump limit, depending on the situation, each one can be quite large, leading to disk fullness.

By default, crash dumps are kept in the folder:

``` { .powershell .no-copy .no-select }
C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes
```

Where `<UserName>` is the Windows user name.

To avoid the situation where the disk fills up with dumps, saving can be disabled by setting:

``` { .ini }
[wsl2]

--8<-- ".wslconfig/.wslconfig:332:338"
MaxCrashDumpCount = 0
```

Or completely disable their collection:

``` { .ini }
[wsl2]

--8<-- ".wslconfig/.wslconfig:332:338"
MaxCrashDumpCount = -1
```

To check for crash dumps, use the following commands:

=== "PowerShell"

    ``` { .powershell .no-select }
    Get-ChildItem "$env:LOCALAPPDATA\Temp\wsl-crashes" -Recurse
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    dir "%LOCALAPPDATA%\Temp\wsl-crashes" /s
    ```

The storage location can also be changed by defining a new and controlled one:

``` ini

--8<-- ".wslconfig/.wslconfig:341:345"
crashDumpFolder = C:\\Path\\To\\wsl-crashes
```

If the dumps are of no value, the folder containing them can simply be deleted.

## Orphaned SWAPs

WSL creates a shared swap file for all running instances with the path:

``` { .powershell .no-copy .no-select }
C:\Users\<UserName>\AppData\Local\Temp\<GUID>\swap.vhdx
```

However, the `<GUID>` folder is unique for each new WSL launch. If WSL terminates unexpectedly, an orphaned page file may remain in the folder.

If a system has enough RAM, the paging file can be completely disabled:

```ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:78:85"
swap = 0
```

Alternatively, a fixed path can be specified to avoid creating files in `<GUID>` folders:

```ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:87:92"
swapFile = C:\\Path\\To\\swap.vhdx
```

Orphaned SWAPs can be found using the following commands:

=== "PowerShell"

    ``` { .powershell .no-select }
    Get-ChildItem "$env:LOCALAPPDATA\Temp" `
      -Recurse `
      -Filter "swap.vhdx" `
      -ErrorAction SilentlyContinue
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    dir "%LOCALAPPDATA%\Temp" /s /b | findstr /i "swap.vhdx"
    ```

But first, shut down WSL so it doesn’t interfere with active swap file:

``` { .powershell .no-select }
wsl --shutdown
```

Orphaned swap files, like crash dumps, can be easily deleted.

Therefore, with just a few settings, it is easy to keep the system clean.
