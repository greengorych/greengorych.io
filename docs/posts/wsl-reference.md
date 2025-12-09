---
draft: false
date:
  created: 2025-12-09
authors:
  - greengorych
categories:
  - General
  - WSL
description: >-
  Overview of the WSL Reference section, providing structured information about Windows Subsystem for Linux.
---

# WSL Reference

Although I had long anticipated the release of Ubuntu Pro for WSL, I kept postponing its review and have only recently begun testing and preparing materials. Over the past few weeks, I’ve been focused on refining the WSL configurations published in the separate [wsl-configs][wsl-configs] repository, embedding configuration code blocks and their full versions into site pages, and developing the reference section.


[wsl-configs]: https://github.com/greengorych/wsl-configs

<!-- more -->

Almost from my earliest blog posts, I began to realize the need for a dedicated WSL reference — a place where I could add, structure, and present information, configuration examples, and explanations. Over the past six months, while publishing my texts first on Reddit and later on this blog, I gradually approached this moment. As much as I resisted the idea of writing documentation for WSL, yesterday, after publishing the first draft of the reference section’s main page, I finally understood that it was inevitable. Only in this way can I collect, organize, and use the information needed to clearly and consistently explain the WSL ecosystem and its capabilities.


The following materials are currently available in the reference:

- [Reference][reference] – the main page with an overview and structure of the reference.
- [Conventions][conventions] – a page containing terminology, formatting conventions for code blocks, and descriptions of examples.
- [.wslconfig][wslconfig], [wsl.conf][wsl.conf], and [wsl-distribution.conf][wsl-distribution.conf] – pages fully dedicated to configuration files, their settings, and ready-to-use templates.
- [Paths][paths] – describes the location of all directories and configuration files paths in both Windows and Linux.
- [Registry][registry] – a page about the Windows Registry keys and values used by WSL.
- [OOBE script][oobe-script] – the last page in the list, describing the Out-of-Box Experience script.


[reference]: ../reference/index.md
[conventions]: ../reference/conventions.md
[wslconfig]:../reference/wslconfig.md
[wsl.conf]:../reference/wsl-conf.md
[wsl-distribution.conf]: ../reference/wsl-distribution-conf.md
[paths]: ../reference/paths.md
[registry]: ../reference/registry.md
[oobe-script]: ../reference/oobe-script.md
