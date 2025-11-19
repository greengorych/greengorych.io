---
draft: false
date:
  created: 2025-10-28
  updated: 2025-11-19
authors:
  - greengorych
categories:
  - WSL
description: >-
  The key differences between .wslconfig and wsl.conf WSL configuration files, and why both are essential for managing the WSL environment.
---

# wsl.conf vs .wslconfig: What’s the Difference and Why Both Matter

My WSL overview begins with a look at its main configurations. These files provide the big picture of what WSL can do and how to control its behavior, both for the overall WSL environment and for individual Linux instances.

Throughout this text, I will use the term _instance_ to distinguish between two related concepts. A distribution is an archive containing the `rootfs` of the operating system being installed. An instance is a system that has been installed from a distribution and is ready to run (or already running).

<!-- more -->

## Main Configuration Files

- `.wslconfig` – a global configuration file, whose settings apply to all installed distributions and running instances.
- `wsl.conf` – a local configuration file, which controls parameters for a specific instance.

## The .wslconfig Configuration File

- Global WSL configuration file.
- Settings apply to all instances running under WSL 2.
- Does not affect WSL 1 instances.
- Located at `C:\Users\<Username>\.wslconfig`.
- Uses the INI format, with settings grouped by sections.
- Not present by default.
- Changes take effect only after restarting WSL (`wsl --shutdown`).
- The availability and behavior of parameters depend on the WSL release, operating system, and processor architecture.
- Some parameters can also be configured via the **WSL Settings** graphical interface.

The `wslconfig` file allows configuration of:

- Hardware resource allocation: number of CPUs, RAM, GPU access, virtual disk size and swap file, and their locations.
- Network settings: network mode, MAC address, DHCP, IPv6, port forwarding, DNS proxy and tunneling, firewall configuration, and proxy server.
- Nested virtualization and hardware performance counters.
- Custom kernel configuration, including modules and boot parameters.
- Graphical application support.
- Logging and safe boot or recovery options.
- Experimental features.

## The wsl.conf Configuration File

- Local configuration file for a specific instance.
- Settings apply to instances running under WSL 1 and WSL 2.
- Parameter availability depends on the version and release.
- Located at `/etc/wsl.conf`.
- Uses the INI format, with settings grouped by sections.

This file is included by default in every installed distribution, typically with a minimal set of options.

The `wsl.conf` file allows configuration of:

- Support for `systemd`.
- Automatic mounting of drives and its options.
- Network settings.
- GPU access.
- Time zone settings.
- Windows interoperability settings.
- Default user definition.

## Comparative Table

| Setting                 | .wslconfig                                                    | wsl.conf                                             |
| ----------------------- | ------------------------------------------------------------- | ---------------------------------------------------- |
| Scope                   | Global configuration file                                     | Local configuration file                             |
| Applies to              | All installed distributions and running instances under WSL 2 | A specific instance                                  |
| WSL version support     | WSL 2 only and does not affect WSL 1                          | WSL 1 and WSL 2 (some options only WSL 2)            |
| Availability depends on | WSL release, operating system, processor architecture         | WSL version and release                              |
| Location                | `C:\Users\<Username>\.wslconfig`                              | `/etc/wsl.conf`                                      |
| Presence by default     | Not presen                                                    | Included in every distribution (only a few settings) |
| Configuration format    | INI format, grouped by sections                               | INI format, grouped by sections                      |
| Changes takes effect    | After restarting WSL                                          | After restarting the instance                        |
| Configurable via GUI    | Some parameters can be configured via WSL Settings GUI        | No GUI configuration                                 |

Together, these two files provide the means to manage WSL behavior and capabilities, from global virtual machine settings to local instance-specific configurations.
