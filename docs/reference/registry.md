---
description: >-
  Reference for the main Windows Registry key and several values ​​used to manage some WSL settings
---

# Registry

This section provides the main Windows Registry key and several values ​​used to manage some WSL settings.

## Registry key

---

A main registry key used to configure the WSL settings.

``` { .text .no-select }
HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss
```

## Registry values

---

###  `NatGatewayIpAddress`

A registry value that determines the NAT gateway IP address used by WSL instances.

``` { .text .no-select }
HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\NatGatewayIpAddress
```

### `NatNetwork`

A registry value that determines the NAT network used by WSL instances.

``` { .text .no-select }
HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\NatNetwork
```

### `DistributionListUrl`

A registry value that allows to replace the default distribution list.

``` { .text .no-select }
HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\DistributionListUrl
```

### `DistributionListUrlAppend`

A registry value that allows to append the default distribution list.

``` { .text .no-select }
HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\DistributionListUrlAppend
```

!!! info
    For simplicity, the abbreviated name `HKLM` is used instead of the full name `HKEY_LOCAL_MACHINE`.

## Summary table

| Location         | Path                                                                            | Description                                           |
| ---------------- | ------------------------------------------------------------------------------- | ----------------------------------------------------- |
| Windows Registry | `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss`                           | Main registry key used to configure WSL parameters    |
| Windows Registry | `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\NatGatewayIpAddress`       | Registry value defines NAT gateway IP address         |
| Windows Registry | `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\NatNetwork`                | Registry value defines NAT network                    |
| Windows Registry | `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\DistributionListUrl`       | Registry value replaces the default distribution list |
| Windows Registry | `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\DistributionListUrlAppend` | Registry value appends the default distribution list  |
