---
description: >-
  Reference guide to terminology, notation, and formatting conventions used throughout this site.
title: >-
  Reference guide to terminology, notation, and formatting conventions
---

# Conventions

This section explains terminology, notation, and examples used throughout the site.

## General terms

---

### Distribution

A distribution is an archive containing the `rootfs` of the operating system being installed. Most installable distributions use the `.wsl` extension.

### Instance

An instance is a system installed from a distribution, ready to run or already running.

### cloud-init

`cloud-init` is a system designed to automatically configure a Linux distribution during its first boot.

## Configuration terms

---

### Configuration format

WSL configuration files: [`.wslconfig`][.wslconfig]{ data-preview }, [`wsl.conf`][wsl-conf]{ data-preview }, [`wsl-distribution.conf`][wsl-distribution-conf]{ data-preview } use the INI format, in which settings are grouped into sections.

[.wslconfig]: wslconfig.md/#wslconfig
[wsl-conf]: wsl-conf.md/#wslconf
[wsl-distribution-conf]: wsl-distribution-conf.md/#wsl-distributionconf

### Section name

A section in a configuration file is a logically separated block of settings grouped by a specific topic or functionality.

In this setting example, the section title is highlighted.

``` { .ini .no-copy .no-select hl_lines="1" }
--8<-- "wsl.conf/wsl.conf:4:13"
```

### Setting name

A setting is a configurable parameter that controls WSL, a distribution, or instance behavior.

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

### Fully qualified setting name

`section.setting` is a fully qualified setting name used to reference a configuration option located in a specific section of a configuration file. In documentation or articles, may encounter examples like `{==boot.systemd==}` or `{==boot.systemd = true==}`, which use the fully qualified setting name to unambiguously indicate where the setting resides

In this example, both the section and the setting are highlighted:

``` { .ini .no-copy .no-select hl_lines="1 10" }
--8<-- "wsl.conf/wsl.conf:4:13"
```

### Setting value

A setting value is the data assigned to a setting that determines how the corresponding configuration option will work. A value can be a string, a number, a Boolean flag, or another data type allowed by the configuration file format. The numeric value can be negative, positive, or zero.

In this example, the setting that has a Boolean value is highlighted:

``` { .ini .no-copy .no-select hl_lines="10" }
--8<-- "wsl.conf/wsl.conf:4:13"
```

In this example, the setting that has an integer value is highlighted:

``` { .ini .no-copy .no-select hl_lines="10" }
--8<-- ".wslconfig/.wslconfig:21:30"
```

In this example, the setting that has a string value is highlighted:

``` { .ini .no-copy .no-select hl_lines="10" }
--8<-- ".wslconfig/.wslconfig:369:378"
```

### Experimental settings

An experimental setting is a configuration option that enables features still under development or testing. Experimental settings are typically disabled by default and should be used with caution.

!!! info
    The `[experimental]` section is available only in the [`.wslconfig`][.wslconfig]{ data-preview } configuration file.

[.wslconfig]: wslconfig.md/#wslconfig

In this example setting, the `[experimental]` section is highlighted:

``` { .ini .no-copy .no-select hl_lines="1" }
--8<-- ".wslconfig/.wslconfig:369:378"
```
