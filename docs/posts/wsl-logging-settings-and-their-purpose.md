---
draft: false
date:
  created: 2025-11-11
  updated: 2025-11-11
authors:
  - greengorych
categories:
  - WSL
description: >-
  Explanation of how to use .wslconfig to manage WSL 2 logging, crash dumps, hardware performance counters and telemetry collection.
---

# WSL Logging: Settings and Their Purpose

The WSL 2 global [configuration](https://greengorych.io/blog/complete-wslconfig-reference-and-template/) file `.wslconfig` doesn’t clearly divide settings into sections. All but two belong to the `[wsl2]` section. I've grouped seven parameters that are related to logging and will go through them in this post.

I mainly use these settings when testing kernel parameters or verifying configuration changes. It’s best to disable logging during normal operation to avoid unnecessary overhead.

<!-- more -->

## `debugConsole`

Opens a separate window with real-time `dmesg` output.

``` ini
[wsl2]

# Shows a debug console with real-time dmesg output during the entire WSL instance runtime
# Dependencies:
# - Ignored if debugConsoleLogFile is set
# Default: false
# Values:
# - true
# - false
debugConsole=false
```

Once the debug console is opened, it displays logs from all running instances. After the instances stop, the window doesn’t close automatically, needs to close it manually.
## `earlyBootLogging`

Enables logging during the early boot stages.

``` ini
[wsl2]

# Enables logging from the early boot stages
# Dependencies:
# - Requires debugConsole=true or debugConsoleLogFile is set
# Default: false
# Values:
# - true
# - false
earlyBootLogging=false
```

Disabled by default.

## `debugConsoleLogFile`

Specifies the path to a file where logs will be written.

``` ini
[wsl2]

# Absolute path to debug console log file
# Dependencies: None
# Default: Not set
# Example: debugConsoleLogFile=C:\\Path\\To\\debug.log
# debugConsoleLogFile=
```

By default, this parameter isn’t configured, meaning logs aren’t written to a separate file. If a log file is specified and `debugConsole=true` won’t open the console window.
## `maxCrashDumpCount`

Defines how many crash dumps are retained.

``` ini
[wsl2]

# Maximum number of crash dumps to retain
# Dependencies: None
# Default: 10
# Values:
# - -1: Disable crash dump collection
# - 0: Behavior undocumented
# - Positive integer: Maximum number of dumps to keep
maxCrashDumpCount=10
```

The default value is `10`, but can set a custom limit or disable dump creation by specifying `-1`.

Crash dumps can take up a significant amount of disk space, so I recommend checking the folder specified by the `crashDumpFolder` parameter and deleting unnecessary files. I usually disable dump creation to avoid cluttering the disk.

## `crashDumpFolder`

Specifies the directory where crash dumps are stored.

``` ini
[wsl2]

# Absolute path to crash dumps folder
# Dependencies:
# - Requires wsl2.MaxCrashDumpCount > 0
# Default: C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes
# Example: crashDumpFolder=C:\\Path\\To\\wsl-crashes
# crashDumpFolder=
```

By default:

``` powershell
C:\Users\<UserName>\AppData\Local\Temp\wsl-crashes
```

Where `<UserName>` is the Windows user name.

## `telemetry`

Telemetry collection is enabled by default in WSL 2.

``` ini
# Enables telemetry collection
# Dependencies: None
# Default: true
# Values:
# - true
# - false
telemetry=true
```

To view what data is being collected by enabling **Turn on Diagnostic Data Viewer**: **Windows Settings → Privacy & Security → Diagnostic & feedback → View diagnostic data**, and installing the [Diagnostic Data Viewer](https://apps.microsoft.com/detail/9N8WTRRSQ8F7) app from the Microsoft Store.

As with crash dumps, I disable this setting to reduce the amount of data stored and transmitted.

## `hardwarePerformanceCounters`

Enables hardware performance counters inside WSL instances.

``` ini
[wsl2]

# Makes hardware performance counters available in WSL instances
# Dependencies:
# - Supported only on AMD64/x64
# - Not available on ARM64
# Default: true on AMD64, false on ARM64
# Values:
# - true
# - false
hardwarePerformanceCounters=true
```

By default, this is **enabled on AMD64/x64** systems and **disabled on ARM64**. When enabled, WSL instances can access performance counters for profiling or performance monitoring.
