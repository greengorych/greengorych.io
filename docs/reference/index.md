---
description: >-
  Reference guide to terminology, notation, and formatting conventions used throughout this site.
---

# Conventions

This section explains terminology, notation, and examples used throughout the site.

## General terms

---

### Distribution

A **distribution** is an archive containing the `rootfs` of the operating system being installed. Most installable distributions use the `.wsl` extension.

### Instance

An **instance** is a system installed from a distribution, ready to run or already running.

## Configuration terms

---

### Section

A **section** in a configuration file is a logically separated block of settings grouped by a specific topic or functionality.

In this setting example, the section title is highlighted.

``` { .ini .no-copy .no-select hl_lines="1" }
--8<-- "wsl.conf/wsl.conf:4:13"
```

### Setting

A **setting** is a configurable parameter that controls WSL, a distribution, or instance behavior.

In this example, the setting is highlighted.

``` { .ini .no-copy .no-select hl_lines="10" }
[boot]

# Enables systemd support
# Available in: WSL 2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
systemd = true
```

### Setting notation

`section.setting` is a notation used to reference a setting located in a specific section of a configuration file.

Example:

``` { .ini .no-copy .no-select }
boot.systemd = true
```

In this example, both the section and the setting are highlighted:

``` { .ini .no-copy .no-select hl_lines="1 10" }
--8<-- "wsl.conf/wsl.conf:4:13"
```

### Experimental settings

An **experimental setting** is a configuration option that enables features still under development or testing. Experimental settings are typically disabled by default and should be used with caution.

!!! info
    The `[experimental]` section is available only in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

[.wslconfig]: wslconfig.md/#wslconfig

In this example setting, the `[experimental]` section is highlighted:

``` { .ini .no-copy .no-select hl_lines="1" }
--8<-- ".wslconfig/.wslconfig:369:378"
```
