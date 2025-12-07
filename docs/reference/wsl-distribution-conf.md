---
description: >-
  Reference for the WSL distribution configuration file wsl-distribution.conf, covering all available sections and settings.
title: >-
  Reference for the WSL distribution configuration file wsl-distribution.conf
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
--8<-- "wsl-distribution.conf/wsl-distribution.conf:6:9"
```

#### `defaultUid`

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf:11:14"
```

#### `defaultName`

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf:16:18"
```

### Shortcut

The settings described below are located in the `[shortcut]` section.

#### `enabled`

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf:22:27"
```

#### `icon`

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf:29:32"
```

### Windows Terminal

The settings described below are located in the `[windowsterminal]` section.

#### `enabled`

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf:36:41"
```

#### `ProfileTemplate`

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf:43:46"
```

## Full configuration

---

This is the fully documented per-distribution configuration file reference and template.

``` ini
--8<-- "wsl-distribution.conf/wsl-distribution.conf"
```
