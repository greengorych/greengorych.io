---
description: >-
  Comprehensive reference for WSL configurations, settings, paths, commands, and related environment details.
title: >-
  WSL reference
---

# Reference

WSL, distribution, and instance configurations contain numerous settings that allow to customize the environment for various tasks. This section of the reference explains how to configure these components and provides examples that can be used to configure WSL itself, individual distributions and instances.

!!! info
    This section does not contain complete or fully verified information about WSL and its environment. Despite the name "Reference", it is only a draft — a skeleton and structure that still needs to be expanded to become a full-fledged reference.

## Reference structure

---

### General

- [Conventions][conventions] – a page explaining the basic terminology, notations, settings, code blocks and configuration examples used on the site.

### Configurations

  - [.wslconfig][.wslconfig] – an overview of the global configuration file, descriptions of individual settings, and a ready-to-use template.
  - [wsl.conf][wsl.conf] – an overview of the instance-level configuration file, descriptions of individual settings, and a ready-to-use template.
  - [wsl-distribution.conf][wsl-distribution.conf] – an overview of the distribution-level configuration file, descriptions of individual settings, and a ready-to-use template.
  - distributions.json – _this page is under development_.
  - terminal-profile.json – _this page is under development_.
  - cloud-init – _this page is under development_.

### Settings

  - [Paths][paths] – a page listing all key Windows and Linux paths used by WSL and its environment.
  - [Registry][registry] – a page describing the main Windows Registry keys and values used to configure certain WSL settings.

### Commands

  - Windows – _this page is under development_.
  - Linux – _this page is under development_.
  - PowerShell – _this page is under development_.

### Scripts
  - [OOBE script][oobe-script] – a page describing the Out-of-Box Experience (OOBE) script and its purpose.

### Addons

- [Additional WSL distributions list][distributions-list] - an unofficial, ready-to-use manifest of additional WSL distributions not included in the official list.

[conventions]: conventions.md
[.wslconfig]: wslconfig.md
[wsl.conf]: wsl-conf.md
[wsl-distribution.conf]: wsl-distribution-conf.md
[paths]: paths.md
[registry]: registry.md
[distributions-list]: distributions-list.md
[oobe-script]: oobe-script.md
