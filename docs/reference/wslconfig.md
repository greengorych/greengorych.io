---
title: Reference for the global WSL 2 configuration file .wslconfig
description: Reference for the global WSL 2 configuration file .wslconfig, covering all available sections and settings.
---

# .wslconfig

A global WSL 2 configuration file, whose settings apply to all newly installed distributions and running instances.

## Overview

---

- Global WSL 2 configuration file.
- Located at `C:\Users\<UserName>\.wslconfig`.
- Not present by default.
- Settings apply to all newly installed distributions and to all instances running under WSL 2.
- Does not affect WSL 1 instances.
- Uses the INI format, with settings grouped into sections.
- Changes take effect only after restarting WSL using `wsl --shutdown`.
- Availability and behavior of parameters depend on the WSL release, operating system, and processor architecture.
- Some settings can be configured through the WSL Settings graphical interface.

## Settings

---

### general

The settings described below belong to the `[general]` section of the configuration.

---

#### `distributionInstallPath`

Specifies the path to the WSL distribution installation folder on Windows. Allows overriding the installation path for newly created [instances][instance]{ data-preview }.

  - Has no dependencies.
  - The default value is `C:\\Users\\<UserName>\\AppData\\Local\\wsl`.
  - Must be an absolute Windows path escaped backslashes `\\`.
  - Using system variables, like `%USERPROFILE%` in the path is not supported.

Example:

``` ini
[general]

--8<-- ".wslconfig/.wslconfig:6:10"
```

#### `instanceIdleTimeout`

  - Has no dependencies.
  - The default value is 15000 (15 seconds).
  - The setting has the following values:
    - `-1` - Disable shut down the instance
    - `0`: Shut down immediately after all processes exit
    - Positive integer: Shut down after the specified idle time (in milliseconds)

Example:

``` ini
[general]

--8<-- ".wslconfig/.wslconfig:12:19"
```

### wsl2

The settings described below apply to the `[wsl2]` section.

---

#### `vmIdleTimeout`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:23:30"
```

#### `distributionStartTimeout`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:32:37"
```

#### `nestedVirtualization`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:39:49"
```

#### `processors`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:51:55"
```

#### `memory`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:57:61"
```

#### `gpuSupport`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:63:69"
```

#### `defaultVhdSize`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:71:76"
```

#### `swap`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:78:86"
```

#### `swapFile`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:87:93"
```

#### `networkingMode`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:95:107"
```

#### `vmSwitch`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:109:116"
```

#### `macAddress`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:118:123"
```

#### `dhcp`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:125:132"
```

#### `dhcpTimeout`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:134:140"
```

#### `ipv6`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:142:149"
```

#### `localhostForwarding`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:151:158"
```

#### `dnsProxy`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:160:166"
```

#### `dnsTunneling`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:168:176"
```

#### `firewall`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:178:184"
```

#### `autoProxy`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:186:192"
```

#### `kernel`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:194:198"
```

#### `kernelCommandLine`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:200:204"
```

#### `kernelBootTimeout`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:206:209"
```

#### `kernelModules`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:211:216"
```

#### `loadDefaultKernelModules`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:218:228"
```

#### `loadKernelModules`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:230:234"
```

#### `kernelDebugPort`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:236:241"
```

#### `hostFileSystemAccess`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:243:249"
```

#### `virtio`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:251:260"
```

#### `virtio9p`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:262:269"
```

#### `virtiofs`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:271:281"
```

#### `mountDeviceTimeout`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:283:287"
```

#### `guiApplications`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:289:295"
```

#### `systemDistro`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:297:302"
```

#### `safeMode`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:304:310"
```

#### `debugConsole`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:312:319"
```

#### `earlyBootLogging`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:321:328"
```

#### `debugConsoleLogFile`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:330:334"
```

#### `maxCrashDumpCount`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:336:343"
```

#### `crashDumpFolder`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:345:350"
```

#### `telemetry`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:352:358"
```

#### `hardwarePerformanceCounters`

``` ini
[wsl2]

--8<-- ".wslconfig/.wslconfig:360:370"
```

### `experimental`

The settings described below apply to the `[experimental]` section.

---

#### `autoMemoryReclaim`

``` ini
[experimental]

--8<-- ".wslconfig/.wslconfig:374:381"
```

#### `sparseVhd`

``` ini
[experimental]

--8<-- ".wslconfig/.wslconfig:383:389"
```

#### `bestEffortDnsParsing`

``` ini
[experimental]

--8<-- ".wslconfig/.wslconfig:391:399"
```

#### `dnsTunnelingIpAddress`

``` ini
[experimental]

--8<-- ".wslconfig/.wslconfig:401:407"
```

#### `initialAutoProxyTimeout`

``` ini
[experimental]

--8<-- ".wslconfig/.wslconfig:409:413"
```

#### `ignoredPorts`

``` ini
[experimental]

--8<-- ".wslconfig/.wslconfig:415:420"
```

#### `hostAddressLoopback`

``` ini
[experimental]

--8<-- ".wslconfig/.wslconfig:422:429"
```

## Full configuration

This is the fully documented global WSL 2 configuration file reference and template.

``` ini
--8<-- ".wslconfig/.wslconfig"
```

[instance]: conventions.md/#instance
