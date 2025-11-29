---
draft: false
date:
  created: 2025-11-03
  updated: 2025-11-29
authors:
  - greengorych
categories:
  - WSL
description: >-
    A complete reference and ready-to-use template for .wslconfig, including descriptions, dependencies, available values, and defaults for each setting.
---

# Complete .wslconfig Reference and Template

In previous posts, I published a [template][template] for `wsl.conf`, the internal configuration file for WSL instances, and [explained][explained] how it differs from `.wslconfig`. Now it’s time to take a closer look at `.wslconfig`. This file globally manages the Windows Subsystem for Linux itself and affects all instances within it.

[template]: complete-wslconf-reference-and-template.md
[explained]: wslconf-vs-wslconfig-whats-the-difference-and-why-both-matter.md

<!-- more -->

This template covers all the settings known to me, including:

- description
- WSL version for which the setting is available
- dependencies
- possible values
- default values

Each parameter is explicitly defined and has a default value, except for settings that don't have it ​​or can't be set via configuration.

## `.wslconfig` template

``` ini
--8<-- ".wslconfig/.wslconfig"
```
