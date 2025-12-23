---
draft: false
date:
  created: 2025-12-22
authors:
  - greengorych
categories:
  - Alpine
  - WSL
description: Building a minimalist Alpine Linux distribution for WSL with WSL-specific configurations and support for amd64 and arm64 architectures.
---

# Alpine Linux for WSL

I took a break from writing documentation and set up the build of a minimalist Alpine Linux distribution for WSL. The project is still in testing, so not all the features common in Windows Subsystem for Linux distributions have been implemented or tested.

<!-- more -->

The distribution is based on the minimal root filesystem of the latest version of Alpine 3.23.2, with the addition of WSL-specific configurations and settings. Builds are available for amd64 and arm64 architectures. All archives have the `.wsl` extension, allowing for double-click installation.

!!! warning
    The arm64 build has not been tested.

A `-2` suffix is added to the Alpine 3.23.2 version to denote the distribution revision and reflect the applied changes.

Current status:

1. Building distributions for the amd64 and arm64 architectures.
2. Installing additional packages, currently only: `bash`, `ca-certificates`, and `tzdata`.
3. Adding WSL-specific configurations:

    - [`wsl-distribution.conf`][wsl-distribution.conf]{ data-preview }
    - [`wsl-conf`][wsl.conf]{ data-preview }

The distribution can be downloaded from the [alpine-for-wsl][alpine-for-wsl] repository and installed by double-clicking or using the command:

``` { .powershell .no-select }
wsl --install --from-file alpine-3.23.2-2-x86_64.wsl
```

To receive the latest Alpine versions, add an additional, regularly updated distribution list. Instructions for adding it are available on the [Additional WSL distributions list][distributions-list] page in the Reference section of the website.

Roadmap:

1. Add the installation and launch of the OpenRC init system and define the list of services required for configuration.
2. Configure the addition of Windows paths.
3. Add [OOBE script][oobe-script]{ data-preview } to create a user, set a password, and add them to groups during the instance's first launch.
4. Add [`cloud-init`][cloud-init]{ data-preview }.

To report a problem or request a feature, use the [issues][alpine-for-wsl-issues] section of the repository.

[alpine-for-wsl]: https://github.com/greengorych/alpine-for-wsl
[distributions-list]: ../reference/distributions-list.md
[wsl.conf]: ../reference/wsl-conf.md/#wslconf
[wsl-distribution.conf]: ../reference/wsl-distribution-conf.md/#wsl-distributionconf
[oobe-script]: ../reference/oobe-script.md/#oobe-script
[cloud-init]: ../reference/conventions.md/#cloud-init
[alpine-for-wsl-issues]: https://github.com/greengorych/alpine-for-wsl/issues
