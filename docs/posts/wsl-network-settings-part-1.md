---
draft: true
date:
  created: 2025-11-23
  updated: 2025-11-23
authors:
  - greengorych
categories:
  - WSL
description: >-
  Overview of the main WSL 2 network settings in .wslconfig configuration, including networkingMode, vmSwitch, macAddress, DHCP, dhcpTimeout, and IPv6.
---

# WSL Network Settings: Part 1

The network is the largest part of the `.wslconfig` configuration in terms of the number of parameters, so I decided to split the topic into several parts. In this part, I will review the main settings, and in the next, the additional and experimental ones.

<!-- more -->

## Main Settings

### `networkingMode`

Specifies the network mode in which WSL instances operate.

There are five modes in total:

- `None`: network disabled, for isolated environments
- `NAT`: Network Address Translation, the default mode
- `Mirrored`: in this mode, the Windows network interfaces are mirrored inside the instance. Both Windows and the instance use the same network interfaces and configuration
- `Bridged`: bridged network mode, requires Hyper-V and a manually created virtual switch. The only mode in which a static IP address can be assigned
- `VirtioProxy`: virtualized network interface mode (almost untested by me)

!!! info
    All modes except `Bridge` do not require Hyper-V installation and manual configuration of the virtual switch.

``` ini
[wsl2]

# Type of network mode used by WSL
# Dependencies:
# - Bridged mode requires Hyper-V to be installed
# - Bridged mode requires a manually created external virtual switch connected to a physical network adapter
# - Other modes (NAT, Mirrored, VirtioProxy) do not require Hyper-V or external switches
# Default: NAT
# Values:
# - None
# - NAT
# - Mirrored
# - Bridged
# - VirtioProxy
networkingMode = NAT
```

### `vmSwitch`

Specifies the virtual switch used in the `Bridged` network mode. Creating such a switch requires installing Hyper-V and manually creating an external virtual switch.

``` ini
[wsl2]

# Name of the Hyper-V virtual switch used by the WSL
# Dependencies:
# - Requires only when wsl2.networkingMode = Bridged
# - Requires Hyper-V
# - Requires a manually created external virtual switch connected to a physical network adapter
# Default: Default Switch (if not specified)
# Example: vmSwitch = CustomSwitch
# vmSwitch =
```

### `macAddress`

Allows setting a MAC address for the network adapter. Works only in `Bridged` mode.

``` ini
[wsl2]
# MAC address assigned to the network adapter
# Dependencies:
# - Requires wsl2.networkingMode = bridged
# Default: Persistent MAC address automatically assigned
# Example: macAddress = 00:15:5D:00:01:02
# macAddress =
```

### `dhcp`

Controls whether DHCP is used to automatically obtain network configuration from a DHCP server. Like `macAddress`, it works only in `Bridged` mode.

``` ini
[wsl2]
# DHCP setting for the network adapter
# Dependencies:
# - Requires wsl2.networkingMode = bridged
# Default: true
# Values:
# - true
# - false
dhcp = true
```

### `dhcpTimeout`

Timeout for waiting for a DHCP response. Requires `wsl2.dhcp = true`.

``` ini
[wsl2]
# Timeout in milliseconds when waiting for DHCP response
# Dependencies:
# - Requires wsl2.dhcp = true
# Default: 5000
# Values:
# - Positive integer (in milliseconds)
dhcpTimeout = 5000
```

### `ipv6`

Enables IPv6 support and works only in `Bridged` mode.

``` ini
[wsl2]

# Controls whether IPv6 is available on the network interface
# Dependencies:
# - Requires wsl2.networkingMode = bridged
# Default: false
# Values:
# - true
# - false
ipv6 = false
```

I plan to dedicate a separate post to the `Bridged` network mode, its configuration, and setting up a static IP address.
