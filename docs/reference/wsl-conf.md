---
title: Reference for the per-instance WSL configuration file wsl.conf
description: Reference for the per-instance WSL configuration file wsl.conf, covering all available sections and settings for both WSL 1 and WSL 2.
---

# wsl.conf

A per-instance configuration file used by both WSL 1 and WSL 2 instances, which controls parameters for a specific instance.

## Overview

---

- Local per-instance configuration file.
- By default, may contain one or two settings: [`boot.systemd`][boot-systemd]{ data-preview } and [`user.default`][user-default]{ data-preview }.
- Settings apply to instances running under both WSL 1 and WSL 2.
- Some settings are available only for WSL 2.
- Located at `/etc/wsl.conf`.
- Uses the INI format, with settings grouped into sections.
- Availability of parameters depends on the WSL version and release.
- Changes take effect only after restarting the instance using `wsl --terminate <InstanceName>`.

[boot-systemd]: wsl-conf.md/#systemd
[user-default]: wsl-conf.md/#default

## Settings

---

### boot

The settings described below are located in the `[boot]` section.

#### `systemd`

``` ini
--8<-- "wsl.conf/wsl.conf:6:13"
```

#### `protectBinfmt`

``` ini
--8<-- "wsl.conf/wsl.conf:15:22"
```

#### `command`

``` ini
--8<-- "wsl.conf/wsl.conf:24:30"
```

### automount

The settings described below are located in the `[automount]` section.

---

#### `enabled`

``` ini
--8<-- "wsl.conf/wsl.conf:34:41"
```

#### `cgroups`

``` ini
--8<-- "wsl.conf/wsl.conf:43:50"
```

#### `ldconfig`

``` ini
--8<-- "wsl.conf/wsl.conf:52:59"
```

#### `mountFsTab`

``` ini
--8<-- "wsl.conf/wsl.conf:61:68"
```

#### `root`

``` ini
--8<-- "wsl.conf/wsl.conf:70:75"
```

#### `options`

``` ini
--8<-- "wsl.conf/wsl.conf:77:128"
```

### network

The settings described below are located in the `[network]` section.

---

#### `hostname`

``` ini
--8<-- "wsl.conf/wsl.conf:132:137"
```

#### `generateHosts`

``` ini
--8<-- "wsl.conf/wsl.conf:139:146"
```

#### `generateResolvConf`

``` ini
--8<-- "wsl.conf/wsl.conf:148:155"
```

### gpu

The settings described below are located in the `[gpu]` section.

---

#### `enabled`

``` ini
--8<-- "wsl.conf/wsl.conf:159:166"
```

#### `appendLibPath`

``` ini
--8<-- "wsl.conf/wsl.conf:168:175"
```

### time

The settings described below are located in the `[time]` section.

---

#### `useWindowsTimezone`

``` ini
--8<-- "wsl.conf/wsl.conf:179:186"
```

### interop

The settings described below are located in the `[interop]` section.

---

#### `enabled`

``` ini
--8<-- "wsl.conf/wsl.conf:190:197"
```

#### `appendWindowsPath`

``` ini
--8<-- "wsl.conf/wsl.conf:199:206"
```

### user

The settings described below are located in the `[user]` section.

---

#### `default`

``` ini
--8<-- "wsl.conf/wsl.conf:210:214"
```

## Full configuration

This is the fully documented per-instance configuration file reference and template.

``` ini
--8<-- "wsl.conf/wsl.conf"
```
