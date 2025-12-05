---
description: >-
  Reference for the global WSL configuration file .wslconfig, covering all available sections and settings.
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

## general

The settings described below apply to the `[general]` section.

---

### `distributionInstallPath`

``` ini
--8<-- ".wslconfig/.wslconfig:6:10"
```

### `instanceIdleTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:12:19"
```

## wsl2

The settings described below apply to the `[wsl2]` section.

---

### `vmIdleTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:23:30"
```

### `distributionStartTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:32:37"
```

### `nestedVirtualization`

``` ini
--8<-- ".wslconfig/.wslconfig:39:49"
```

### `processors`

``` ini
--8<-- ".wslconfig/.wslconfig:51:55"
```

### `memory`

``` ini
--8<-- ".wslconfig/.wslconfig:57:61"
```

### `gpuSupport`

``` ini
--8<-- ".wslconfig/.wslconfig:63:69"
```

### `defaultVhdSize`

``` ini
--8<-- ".wslconfig/.wslconfig:71:76"
```

### `swap`

``` ini
--8<-- ".wslconfig/.wslconfig:78:86"
```

### `swapFile`

``` ini
--8<-- ".wslconfig/.wslconfig:88:94"
```

### `networkingMode`

``` ini
--8<-- ".wslconfig/.wslconfig:96:108"
```

### `vmSwitch`

``` ini
--8<-- ".wslconfig/.wslconfig:110:117"
```

### `macAddress`

``` ini
--8<-- ".wslconfig/.wslconfig:119:124"
```

### `dhcp`

``` ini
--8<-- ".wslconfig/.wslconfig:126:133"
```

### `dhcpTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:135:141"
```

### `ipv6`

``` ini
--8<-- ".wslconfig/.wslconfig:143:150"
```

### `localhostForwarding`

``` ini
--8<-- ".wslconfig/.wslconfig:152:159"
```

### `dnsProxy`

``` ini
--8<-- ".wslconfig/.wslconfig:161:167"
```

### `dnsTunneling`

``` ini
--8<-- ".wslconfig/.wslconfig:169:177"
```

### `firewall`

``` ini
--8<-- ".wslconfig/.wslconfig:179:185"
```

### `autoProxy`

``` ini
--8<-- ".wslconfig/.wslconfig:187:193"
```

### `kernel`

``` ini
--8<-- ".wslconfig/.wslconfig:195:199"
```

### `kernelCommandLine`

``` ini
--8<-- ".wslconfig/.wslconfig:201:205"
```

### `kernelBootTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:207:210"
```

### `kernelModules`

``` ini
--8<-- ".wslconfig/.wslconfig:212:216"
```

### `loadKernelModules`

``` ini
--8<-- ".wslconfig/.wslconfig:218:222"
```

### `loadDefaultKernelModules`

``` ini
--8<-- ".wslconfig/.wslconfig:224:231"
```

### `kernelDebugPort`

``` ini
--8<-- ".wslconfig/.wslconfig:233:238"
```

### `hostFileSystemAccess`

``` ini
--8<-- ".wslconfig/.wslconfig:240:246"
```

### `virtio`

``` ini
--8<-- ".wslconfig/.wslconfig:248:257"
```

### `virtio9p`

``` ini
--8<-- ".wslconfig/.wslconfig:259:266"
```

### `virtiofs`

``` ini
--8<-- ".wslconfig/.wslconfig:268:278"
```

### `mountDeviceTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:280:284"
```

### `guiApplications`

``` ini
--8<-- ".wslconfig/.wslconfig:286:292"
```

### `systemDistro`

``` ini
--8<-- ".wslconfig/.wslconfig:294:299"
```

### `safeMode`

``` ini
--8<-- ".wslconfig/.wslconfig:301:307"
```

### `debugConsole`

``` ini
--8<-- ".wslconfig/.wslconfig:309:316"
```

### `earlyBootLogging`

``` ini
--8<-- ".wslconfig/.wslconfig:318:325"
```

### `debugConsoleLogFile`

``` ini
--8<-- ".wslconfig/.wslconfig:327:331"
```

### `maxCrashDumpCount`

``` ini
--8<-- ".wslconfig/.wslconfig:333:340"
```

### `crashDumpFolder`

``` ini
--8<-- ".wslconfig/.wslconfig:342:347"
```

### `telemetry`

``` ini
--8<-- ".wslconfig/.wslconfig:349:355"
```

## `experimental`

The settings described below apply to the `[experimental]` section.

---

### `autoMemoryReclaim`

``` ini
--8<-- ".wslconfig/.wslconfig:371:378"
```

### `sparseVhd`

``` ini
--8<-- ".wslconfig/.wslconfig:380:386"
```

### `bestEffortDnsParsing`

``` ini
--8<-- ".wslconfig/.wslconfig:388:396"
```

### `dnsTunnelingIpAddress`

``` ini
--8<-- ".wslconfig/.wslconfig:398:404"
```

### `initialAutoProxyTimeout`

``` ini
--8<-- ".wslconfig/.wslconfig:406:410"
```

### `ignoredPorts`

``` ini
--8<-- ".wslconfig/.wslconfig:412:417"
```

### `hostAddressLoopback`

``` ini
--8<-- ".wslconfig/.wslconfig:419:426"
```

## Full configuration

``` ini
--8<-- ".wslconfig/.wslconfig"
```
