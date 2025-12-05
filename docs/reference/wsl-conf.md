---
description: >-
  eference for the per-instance WSL configuration file wsl.conf, covering all available sections and settings for both WSL 1 and WSL 2.
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
- Uses the INI format, with settings grouped into sections.
- Availability of parameters depends on the WSL version and release.
- Changes take effect only after restarting the instance using `wsl --terminate`.

[boot-systemd]: wsl-conf.md/#systemd
[user-default]: wsl-conf.md/#default

## boot

---

### `systemd`

``` ini
--8<-- "wsl.conf/wsl.conf:6:13"
```

### `protectBinfmt`

``` ini
--8<-- "wsl.conf/wsl.conf:15:22"
```

### `command`

``` ini
--8<-- "wsl.conf/wsl.conf:24:29"
```

## automount

---

### `enabled`

``` ini
--8<-- "wsl.conf/wsl.conf:33:40"
```

### `cgroups`

``` ini
--8<-- "wsl.conf/wsl.conf:42:49"
```

### `ldconfig`

``` ini
--8<-- "wsl.conf/wsl.conf:51:58"
```

### `mountFsTab`

``` ini
--8<-- "wsl.conf/wsl.conf:60:67"
```

### `root`

``` ini
--8<-- "wsl.conf/wsl.conf:69:74"
```

### `options`

``` ini
--8<-- "wsl.conf/wsl.conf:76:106"
```

## network

---

### `hostname`

``` ini
--8<-- "wsl.conf/wsl.conf:110:115"
```

### `generateHosts`

``` ini
--8<-- "wsl.conf/wsl.conf:117:124"
```

### `generateResolvConf`

``` ini
--8<-- "wsl.conf/wsl.conf:126:133"
```

## gpu

---

### `enabled`

``` ini
--8<-- "wsl.conf/wsl.conf:137:144"
```

### `appendLibPath`

``` ini
--8<-- "wsl.conf/wsl.conf:146:153"
```

## time

---

### `useWindowsTimezone`

``` ini
--8<-- "wsl.conf/wsl.conf:157:164"
```

## interop

---

### `enabled`

``` ini
--8<-- "wsl.conf/wsl.conf:168:175"
```

### `appendWindowsPath`

``` ini
--8<-- "wsl.conf/wsl.conf:177:184"
```

## user

---

### `default`

``` ini
--8<-- "wsl.conf/wsl.conf:188:192"
```

## Full configuration

``` ini
--8<-- "wsl.conf/wsl.conf"
```
