---
draft: false
date: 2025-10-31
authors:
  - greengorych
categories:
  - Ubuntu
  - WSL
description: >-
  Canonical introduces support for v3 CPU architecture packages in Ubuntu 25.10, enabling improved performance on updated systems.
---

# Canonical Introduces Support for v3 Architecture Packages

Canonical has [announced](https://discourse.ubuntu.com/t/introducing-architecture-variants-amd64v3-now-available-in-ubuntu-25-10/71312?utm_source=chatgpt.com) support for packages optimized for the v3 CPU architecture. Starting with Ubuntu 25.10 (currently in testing), it’s now possible to install and update packages built for this architecture.

At the moment, v3 packages are still being rebuilt, so not all of them are available yet. Testing is also incomplete, and users who upgrade may encounter some issues, these will be addressed by the time Ubuntu 26.04 LTS is released.

<!-- more -->

## What the v3 Architecture Means

Traditionally, Ubuntu is built for the baseline x86-64 (amd64) architecture — a "set of instructions" that ensures compatibility even with older processors.

The move to amd64v3 means that software can now take advantage of newer CPU instructions that deliver better performance.
However, this also makes the software incompatible with older CPUs that do not support these extensions.

## How to Enable Support for v3 Packages

Check CPU architecture:

```bash
ld.so --help | grep '\-v[0-9]'
```

If the output includes the line `x86-64-v3 (supported, searched)`, it means your processor supports the v3 architecture.

Example output:

```bash
x86-64-v4
x86-64-v3 (supported, searched)
x86-64-v2 (supported, searched)
```

Add the configuration:

```bash
echo 'APT::Architecture-Variants "amd64v3";' | sudo tee /etc/apt/apt.conf.d/99enable-amd64v3
```

Or modify the default repository settings in `/etc/apt/sources.list.d/ubuntu.sources`:

```bash
Types: deb
URIs: http://archive.ubuntu.com/ubuntu/
Suites: questing questing-updates questing-backports
Components: main universe restricted multiverse
Architectures: amd64v3
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
Enabled: yes

Types: deb
URIs: http://security.ubuntu.com/ubuntu/
Suites: questing-security
Components: main universe restricted multiverse
Architectures: amd64v3
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
Enabled: yes
```

Update package lists:

```bash
sudo apt update
```

Upgrade the system:

```bash
sudo apt upgrade
```


During the upgrade, may see a message about some packages being "downgraded". This is only a mismatch and will be fixed by the release of Ubuntu 26.04.

After reading this announcement, I decided to switch my main WSL instance from Ubuntu 24.04 to 25.10 to observe the changes.
