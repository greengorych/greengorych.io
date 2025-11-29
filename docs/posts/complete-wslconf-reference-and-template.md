---
draft: false
date:
  created: 2025-10-30
  updated: 2025-11-29
authors:
  - greengorych
categories:
  - WSL
description: >-
  A complete reference and ready-to-use template for wsl.conf, including descriptions, dependencies, available values, and defaults for each setting.
---

# Complete wsl.conf Reference and Template

Since I started using WSL as my primary environment for learning and development, I began collecting the settings of its configuration files. By gradually testing and verifying the behavior of each setting and its dependencies, I compiled a documented and ready-to-use `wsl.conf` template, which I apply across all of my instances.

<!-- more -->

This template covers all the settings known to me, including:

- descriptions
- WSL version for which setting is available
- dependencies
- possible values
- default values

Each parameter is explicitly defined and has a default value, except for a few individual settings that do not.

- `boot.command`
- `network.hostname`
- `user.default`

## `wsl.conf` template

``` ini
--8<-- "wsl.conf/wsl.conf"
```
