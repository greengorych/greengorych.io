---
draft: false
date: 2025-10-30
authors:
  - greengorych
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

Each parameter is explicitly defined and has a default value, except for a few individual settings, `boot.command`, `network.hostname` and `user.default`, which do not have default values.

```ini
[boot]

# Enables systemd support
# Available in: WSL 2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
systemd=true

# Prevents creation of systemd units when systemd is enabled
# Available in: WSL 2
# Dependencies: boot.systemd=true
# Default: true
# Values:
# - true
# - false
protectBinfmt=true

# Command to run at each boot (as root)
# Available in: WSL 2
# Dependencies: Only a single command is allowed, without shell pipes, redirection, or multi-line scripts
# Default: Not set
# Example: command="service docker start"
# command=

[automount]

# Automatically mounts Windows drives under the specified mount root
# Available in: WSL 1/2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
enabled=true

# Mounts entries from /etc/fstab at boot
# Available in: WSL 1/2
# Dependencies: automount.enabled=true
# Default: true
# Values:
# - true
# - false
mountFsTab=true

# Sets the mount point for Windows mounted drives
# Available in: WSL 1/2
# Dependencies: automount.enabled=true
# Default: /mnt/
# Values: Any valid absolute directory path
root=/mnt/

# Sets additional mount options
# Available in: WSL 1/2
# Dependencies: automount.enabled=true
# Default: None (Uses internal defaults if not specified)
#
# Options (comma-separated):
#
# +------------+-------------------------------------------------+----------+
# | Option     | Description                                     | Default  |
# |------------|-------------------------------------------------|----------|
# | metadata   | Enable Linux file permissions on mounted drives | Disabled |
# | uid=UID    | User ID used as owner of all files              | 1000     |
# | gid=GID    | Group ID used as owner of all files             | 1000     |
# | umask=MODE | Octal permission mask for files and directories | 022      |
# | fmask=MODE | Octal permission mask for files only            | 000      |
# | dmask=MODE | Octal permission mask for directories only      | 000      |
# | case=MODE  | Case sensitivity behavior (modes listed below)  | off      |
# +------------+-------------------------------------------------+----------+
#
# case=MODE modes:
#
# +--------+---------------------------------------------------+
# | Value  | Description                                       |
# |--------|---------------------------------------------------|
# | off    | Case insensitivity (default)                      |
# | dir    | Enables case sensitivity for specific directories |
# | force  | Forces all new directories to be case-sensitive   |
# +--------+---------------------------------------------------+
#
# Example: options="metadata,uid=1000,gid=1000,umask=022,fmask=000,dmask=000,case=off"
# options=

# Automatic configuration /etc/ld.so.conf.d/ld.wsl.conf generation
# Available in: WSL 2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
ldconfig=true

[network]

# Sets a custom hostname
# Available in: WSL 1/2
# Dependencies: None
# Default: Windows hostname
# Value: Any valid hostname
# hostname=

# Automatically creates /etc/resolv.conf on each launch
# Available in: WSL 1/2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
generateResolvConf=true

# Automatically creates /etc/hosts on each launch
# Available in: WSL 1/2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
generateHosts=true

[gpu]

# Enables access to the Windows GPU via para-virtualization
# Available in: WSL 2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
enabled=true

# Appends GPU driver paths
# Available in: WSL 2
# Dependencies: gpu.enabled=true
# Default: true
# Values:
# - true
# - false
appendLibPath=true

[time]

# Synchronizes Linux timezone with the Windows host
# Available in: WSL 2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
useWindowsTimezone=true

[interop]

# Allows launching Windows executables from the Linux environment
# Available in: WSL 1/2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
enabled=true

# Appends Windows system paths to the Linux $PATH variable
# Available in: WSL 1/2
# Dependencies: None
# Default: true
# Values:
# - true
# - false
appendWindowsPath=true

[user]

# Specifies the default user to be used when launching the distribution
# Available in: WSL 1/2
# Dependencies: User must already exist in the Linux system
# Default: First created user
# default=
```
