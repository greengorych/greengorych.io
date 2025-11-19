---
draft: false
date:
  created: 2025-11-19
  updated: 2025-11-19
authors:
  - greengorych
categories:
  - WSL
description: >-
  Explanation of how to use .wslconfig to manage WSL 2 hardware settings, including CPU, RAM, GPU, swap configuration, and experimental features.
---

# WSL Hardware: Resources Management


If the `.wslconfig` configuration file is not created with explicitly defined settings, WSL 2 allocates hardware resources automatically. It uses all available CPU cores, half of the available memory, creates a dynamically expanding 1TB disk for instances, a shared swap file, and enables GPU support. This is sufficient for basic operation, but more fine-tuning may be required, especially for resource-intensive tasks. I prefer to allocate resources more precisely for my tasks and explicitly define all configuration parameters.

<!-- more -->

In this post, I’ll cover the main and additional experimental settings, that allow to manage WSL 2 and its instance hardware resources.

## Main Settings

The configuration file does not provide a clear structural grouping of settings into sections with their affiliation, so I have classified the settings described below as hardware.

### `processors`

By default, all available logical CPU cores on the device are used.

``` ini
[wsl2]

# Maximum number of logical CPU cores made available to all instances
# Dependencies: None
# Default: 0: all available logical processors
# Example: processors=2
processors=0
```

### `memory`

By default, WSL uses half of the available RAM. If the device has a discrete GPU that uses part of the system memory, then WSL instances will receive half of the total RAM minus the GPU memory.

``` ini
[wsl2]

# Maximum total amount of memory available to all instances
# Dependencies: None
# Default: 0: 50% of available physical RAM
# Example: memory=4GB
memory=0
```

### `gpuSupport`

Enables or disables GPU support. Enabled by default.

``` ini
[wsl2]

# Enables GPU support
# Dependencies: None
# Default: true
# Values:
# - true
# - false
gpuSupport=true
```

### `defaultVhdSize`

Default disk size for newly created instances. When installing a distribution, an instance with a dynamically expanding 1TB disk is created.

``` ini
[wsl2]

# Default virtual disk size for newly created WSL instances
# Dependencies:
# - Dynamically allocated
# Default: 1TB
# Example: defaultVhdSize=20GB
defaultVhdSize=1TB
```

### `swap`

A swap file shared by all instances. If the size is not specified, it will equal 25% of RAM (rounded up). If specified manually, WSL will use 50% of the defined value. Setting `0` disables swap entirely.

``` ini
[wsl2]

# Size of the swap file used by WSL for all instances
# Dependencies:
# - The default swap size is 25% of the total system RAM,
# or 50% of the RAM specified by the wsl2.memory setting
# Default: 25% of the memory allocated to WSL
# Values:
# - 0: Disable swap entirely
# - Positive integer with unit suffix (e.g., 8GB, 1024MB)
# swap=
```

### `swapFile`

Defines the location of the swap file. WSL creates a single shared file. This setting is ignored if `wsl2.swap=0`.

``` ini
[wsl2]

# Absolute Windows path to the swap file
# Dependencies:
# - Ignored if wsl2.swap=0
# Notes:
# - Use `wslinfo --vm-id` to get the <WSL VM ID>
# Default: %USERPROFILE%\AppData\Local\Temp\<WSL VM ID>\swap.vhdx
# swapFile=
```

The file is created in the following folder:

``` text { .sh .no-copy }
%USERPROFILE%\AppData\Local\Temp\<WSL VM ID>
```

Where `<WSL VM ID>` is the WSL virtual machine ID.

The value can be obtained in a running instance with:

``` bash
wslinfo --vm-id
```

There is a caveat involving swap files, as well as [crash dumps](https://greengorych.io/blog/wsl-logging-settings-and-their-purpose/#maxcrashdumpcount){ data-preview }: if WSL terminates unexpectedly, the file will not be deleted. Since the `WSL VM ID` is unique for each WSL 2 session, a new swap file in a new folder will be created after a restart.
## Experimental Settings

Two additional experimental settings located in the `[experimental]` section also affect hardware resource usage. Like the main settings, they control the use of hardware resources.

### `autoMemoryReclaim`

Feature for reclaiming RAM back to Windows. It has three operating modes:

- `disabled`: memory reclaim disabled
- `gradual`: gradual reclamation
- `dropcache`: immediate reclamation

The default mode is `gradual`.

``` ini
[experimental]

# Defines memory reclaim strategy after detecting idle CPU inactivity
# Dependencies: None
# Default: gradual
# Values:
# - disabled: Disable memory reclaim
# - gradual: Reclaim memory slowly
# - dropcache: Immediately reclaim memory
autoMemoryReclaim=gradual
```

### `sparseVhd`

Option that allows automatic shrinking of a dynamic disk to match actual used space. Triggered after an instance is stopped. Like `defaultVhdSize`, it only applies to newly created disks.

``` ini
[experimental]

# Allows the virtual disk to shrink dynamically for newly created VHDs
# Dependencies: None
# Default: false
# Values:
# - true
# - false
sparseVhd=false
```

Disabled by default. After enabling it, a warning will appear when installing a new distribution:

!!! warning
	wsl: Sparse VHD support is currently disabled due to potential data corruption.

	To force a distribution to use a sparse VHD, please run:

	wsl.exe --manage <DistributionName> --set-sparse true --allow-unsafe

To use Sparse VHDs, you must manually configure the instance disk with the command:

``` powershell
wsl.exe --manage <DistributionName> --set-sparse true --allow-unsafe
```

Unlike CPU, RAM, and GPU, disk configuration and management is not limited to straightforward settings. I plan to cover this topic separately in several future posts.
