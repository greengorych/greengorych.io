---
description: >-
  Reference for the global WSL 2 configuration file .wslconfig, covering all available sections and settings.
title: >-
  Reference for the global WSL 2 configuration file .wslconfig
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

The settings described below apply to the `[general]` section.

---

#### `distributionInstallPath`

``` ini
--8<-- ".wslconfig/.wslconfig:6:10"
```

#### `instanceIdleTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:12:19"
```

### wsl2

The settings described below apply to the `[wsl2]` section.

---

#### `vmIdleTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:23:30"
```

#### `distributionStartTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:32:37"
```

#### `nestedVirtualization`

``` ini
--8<-- ".wslconfig/.wslconfig:39:49"
```

#### `processors`

``` ini
--8<-- ".wslconfig/.wslconfig:51:55"
```

#### `memory`

``` ini
--8<-- ".wslconfig/.wslconfig:57:61"
```

#### `gpuSupport`

``` ini
--8<-- ".wslconfig/.wslconfig:63:69"
```

#### `defaultVhdSize`

``` ini
--8<-- ".wslconfig/.wslconfig:71:76"
```

#### `swap`

``` ini
--8<-- ".wslconfig/.wslconfig:78:86"
```

#### `swapFile`

``` ini
--8<-- ".wslconfig/.wslconfig:87:93"
```

#### `networkingMode`

``` ini
--8<-- ".wslconfig/.wslconfig:95:107"
```

#### `vmSwitch`

``` ini
--8<-- ".wslconfig/.wslconfig:109:116"
```

#### `macAddress`

``` ini
--8<-- ".wslconfig/.wslconfig:118:123"
```

#### `dhcp`

``` ini
--8<-- ".wslconfig/.wslconfig:125:132"
```

#### `dhcpTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:134:140"
```

#### `ipv6`

``` ini
--8<-- ".wslconfig/.wslconfig:142:149"
```

#### `localhostForwarding`

``` ini
--8<-- ".wslconfig/.wslconfig:151:158"
```

#### `dnsProxy`

``` ini
--8<-- ".wslconfig/.wslconfig:160:166"
```

#### `dnsTunneling`

``` ini
--8<-- ".wslconfig/.wslconfig:168:176"
```

#### `firewall`

``` ini
--8<-- ".wslconfig/.wslconfig:178:184"
```

#### `autoProxy`

``` ini
--8<-- ".wslconfig/.wslconfig:186:192"
```

#### `kernel`

``` ini
--8<-- ".wslconfig/.wslconfig:194:198"
```

#### `kernelCommandLine`

``` ini
--8<-- ".wslconfig/.wslconfig:200:204"
```

#### `kernelBootTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:206:209"
```

#### `kernelModules`

``` ini
--8<-- ".wslconfig/.wslconfig:211:215"
```

#### `loadKernelModules`

``` ini
--8<-- ".wslconfig/.wslconfig:217:221"
```

#### `loadDefaultKernelModules`

``` ini
--8<-- ".wslconfig/.wslconfig:223:230"
```

#### `kernelDebugPort`

``` ini
--8<-- ".wslconfig/.wslconfig:232:237"
```

#### `hostFileSystemAccess`

``` ini
--8<-- ".wslconfig/.wslconfig:239:245"
```

#### `virtio`

``` ini
--8<-- ".wslconfig/.wslconfig:247:256"
```

#### `virtio9p`

``` ini
--8<-- ".wslconfig/.wslconfig:258:265"
```

#### `virtiofs`

``` ini
--8<-- ".wslconfig/.wslconfig:267:277"
```

#### `mountDeviceTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:279:283"
```

#### `guiApplications`

``` ini
--8<-- ".wslconfig/.wslconfig:285:291"
```

#### `systemDistro`

``` ini
--8<-- ".wslconfig/.wslconfig:293:298"
```

#### `safeMode`

``` ini
--8<-- ".wslconfig/.wslconfig:300:306"
```

#### `debugConsole`

``` ini
--8<-- ".wslconfig/.wslconfig:308:315"
```

#### `earlyBootLogging`

``` ini
--8<-- ".wslconfig/.wslconfig:317:324"
```

#### `debugConsoleLogFile`

``` ini
--8<-- ".wslconfig/.wslconfig:326:330"
```

#### `maxCrashDumpCount`

``` ini
--8<-- ".wslconfig/.wslconfig:332:339"
```

#### `crashDumpFolder`

``` ini
--8<-- ".wslconfig/.wslconfig:341:346"
```

#### `telemetry`

``` ini
--8<-- ".wslconfig/.wslconfig:348:354"
```

### `experimental`

The settings described below apply to the `[experimental]` section.

---

#### `autoMemoryReclaim`

``` ini
--8<-- ".wslconfig/.wslconfig:370:377"
```

#### `sparseVhd`

``` ini
--8<-- ".wslconfig/.wslconfig:379:385"
```

#### `bestEffortDnsParsing`

``` ini
--8<-- ".wslconfig/.wslconfig:387:395"
```

#### `dnsTunnelingIpAddress`

``` ini
--8<-- ".wslconfig/.wslconfig:397:403"
```

#### `initialAutoProxyTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:405:409"
```

#### `ignoredPorts`

``` ini
--8<-- ".wslconfig/.wslconfig:411:416"
```

#### `hostAddressLoopback`

``` ini
--8<-- ".wslconfig/.wslconfig:418:425"
```

## Full configuration

This is the fully documented global WSL 2 configuration file reference and template.

``` ini
--8<-- ".wslconfig/.wslconfig"
```
