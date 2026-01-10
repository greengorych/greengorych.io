---
title: Reference for the WSL distribution configuration file wsl-distribution.conf
description: Reference for the WSL distribution configuration file wsl-distribution.conf, covering all available sections and settings.
---

# wsl-distribution.conf

The configuration file used during installation and partially during the import of a distribution. This reference includes all known parameters, their possible values, dependencies, and default settings.

## Overview

---

- Distribution configuration file.
- Located at `/etc/wsl-distribution.conf`.
- All settings are applied during the installation of the distribution.
- The Out-of-Box Experience script is not started when importing the distribution.
- Uses the INI format, with settings grouped into sections.

## Settings

---

### OOBE

The settings described below are located in the `[oobe]` section.

#### `command`

``` ini
[oobe]

--8<-- "wsl-distribution.conf/wsl-distribution.conf:6:12"
```

#### `defaultUid`

``` ini
[oobe]

--8<-- "wsl-distribution.conf/wsl-distribution.conf:14:17"
```

#### `defaultName`

``` ini
[oobe]

--8<-- "wsl-distribution.conf/wsl-distribution.conf:19:21"
```

### Shortcut

The settings described below are located in the `[shortcut]` section.

#### `enabled`

``` ini
[shortcut]

--8<-- "wsl-distribution.conf/wsl-distribution.conf:25:30"
```

#### `icon`

``` ini
[shortcut]

--8<-- "wsl-distribution.conf/wsl-distribution.conf:32:38"
```

### Windows Terminal

The settings described below are located in the `[windowsterminal]` section.

#### `enabled`

``` ini
[windowsterminal]

--8<-- "wsl-distribution.conf/wsl-distribution.conf:42:47"
```

#### `ProfileTemplate`

``` ini
[windowsterminal]

--8<-- "wsl-distribution.conf/wsl-distribution.conf:49:55"
```

## Full configuration

---

This is the fully documented per-distribution configuration file reference and template.

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf"
```
