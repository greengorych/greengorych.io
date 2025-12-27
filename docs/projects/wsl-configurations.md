---
title: Curated collection of fully documented configuration files
description: A project of a curated collection of fully documented configuration files and manifests for Windows Subsystem for Linux (WSL).
---

# WSL configurations

[wsl-configs][wsl-configs] – a repository containing a curated collection of configuration files for Windows Subsystem for Linux (WSL).

## Main configurations

---

### .wslconfig

[.wslconfig][.wslconfig] – a fully documented global WSL 2 configuration file.

Copy the configuration to :

``` { .powershell .no-select}
C:\Users\<UserName>\.wslconfig
```

Where `<UserName>` is a Windows username.

Make configuration changes and shut down WSL:

``` { .powershell .no-select}
wsl --shutdown
```

Start it again, and after this, the configuration will be applied.

!!! info
    More information about the configuration is available on the  [`.wslconfig`][wslconfig] reference page.

### wsl.conf

[wsl.conf][wsl.conf] – a fully documented per-instance configuration file used by both WSL 1 and WSL 2 instances.

Copy the configuration to:

``` { .sh .no-select}
/etc/wsl.conf
```

Make configuration changes and shutdown an instance:

``` { .powershell .no-select}
wsl --terminate <InstanceName>
```

Start it again, and after this, the configuration will be applied.

!!! info
    More information about the configuration is available on the [`wsl.conf`][wsl-conf] reference page.

### wsl-distribution.conf

[wsl-distribution.conf][wsl-distribution.conf] – a fully documented per-distribution configuration file used during installation and except OOBE script during import of the distribution.

!!! info
    More information about the configuration is available on the [`wsl-distribution.conf`][wsl-distribution-conf] reference page.

### distributions.json

[distributions.json][distributions.json] – a manifest template used to add additional WSL distributions.

## Additional configurations

---

### Distributions

[Distributions][distributions] – an unofficial, ready-to-use registerable list of additional WSL distributions.

!!! info
    More information about the additional WSL distributions list is available on the [reference page][distributions-list] page.

Or from the repository using commands (run as administrator):

=== "PowerShell"

    ``` { .powershell .no-select }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name DistributionListUrlAppend `
      -Value "https://raw.githubusercontent.com/greengorych/wsl-configs/main/distributions/distributions.json" `
      -Type String -Force
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /t REG_MULTI_SZ ^
    /d "https://raw.githubusercontent.com/greengorych/wsl-configs/main/distributions/distributions.json" ^
    /f
    ```

After adding the manifest, additional distributions will appear in the list of available distributions.

``` { .powershell .no-select }
wsl --list --online
```

To remove an additional list, use the following commands (run as administrator):

=== "PowerShell"

    ``` { .powershell .no-select }
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name "DistributionListUrlAppend"  `
      -Force
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /f
    ```

[wsl-configs]: https://github.com/greengorych/wsl-configs
[.wslconfig]: https://github.com/greengorych/wsl-configs/tree/main/.wslconfig/.wslconfig
[wslconfig]: ../reference/wslconfig.md/#wslconfig
[wsl.conf]: https://github.com/greengorych/wsl-configs/blob/main/wsl.conf/wsl.conf
[wsl-conf]: ../reference/wsl-conf.md/#wslconf
[wsl-distribution.conf]: https://github.com/greengorych/wsl-configs/blob/main/wsl-distribution.conf/wsl-distribution.conf
[wsl-distribution-conf]: ../reference/wsl-distribution-conf.md/#wsl-distributionconf
[distributions.json]: https://github.com/greengorych/wsl-configs/blob/main/distributions.json/distributions.json
[distributions]: https://github.com/greengorych/wsl-configs/blob/main/distributions/distributions.json
[distributions-list]: ../reference/distributions-list.md/#additional-wsl-distributions-list
