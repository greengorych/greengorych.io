---
description: >-
  A curated collection of fully documented configuration files and manifests for Windows Subsystem for Linux (WSL).
title: >-
  Curated collection of fully documented configuration files
---

# wsl-configs

[**wsl-configs**][wsl-configs] – a repository containing a curated collection of configuration files for Windows Subsystem for Linux (WSL).

[wsl-configs]: https://github.com/greengorych/wsl-configs

## Main configurations

---

### .wslconfig

[**.wslconfig**][.wslconfig] – a fully documented global WSL 2 configuration file.

[.wslconfig]: https://github.com/greengorych/wsl-configs/tree/main/.wslconfig/.wslconfig

Copy the configuration to :

``` { .powershell .no-select}
C:\Users\<UserName>\.wslconfig
```

Where `<UserName>` is a Windows username.

Make configuration changes and shut down WSL:

``` { .powershell .no-select}
wsl --shutdown
```

And start it again. After this, the configuration will be applied.

!!! info
    More information about the configuration is available in the reference section [`.wslconfig`][wslconfig].

[wslconfig]: ../reference/wslconfig.md/#wslconfig

### wsl.conf

[**wsl.conf**][wsl.conf] – a fully documented per-instance configuration file used by both WSL 1 and WSL 2 instances.

[wsl.conf]: https://github.com/greengorych/wsl-configs/blob/main/wsl.conf/wsl.conf


Copy the configuration to:

``` { .sh .no-select}
/etc/wsl.conf
```

Make configuration changes and shutdown an instance:

``` { .powershell .no-select}
wsl --terminate <InstanceName>
```

And start it again. After this, the configuration will be applied.

!!! info
    More information about the configuration is available in the reference section [`wsl.conf`][wsl-conf].

[wsl-conf]: ../reference/wsl-conf.md/#wsl.conf

### wsl-distribution.conf

[**wsl-distribution.conf**][wsl-distribution.conf] – a fully documented per-distribution configuration file used during installation and except OOBE script during import of the distribution.

[wsl-distribution.conf]: https://github.com/greengorych/wsl-configs/blob/main/wsl-distribution.conf/wsl-distribution.conf

!!! info
    More information about the configuration is available in the reference section [`wsl-distribution.conf`][wsl-distribution-conf].

[wsl-distribution-conf]: ../reference/wsl-distribution-conf.md/#wsl-distributionconf

## Additional configurations

---

### distributions.json

[**distributions.json**][distributions.json] – an unofficial, ready-to-use list of additional WSL distributions consists of:

[distributions.json]: https://github.com/greengorych/wsl-configs/blob/main/distributions/distributions.json

| Distribution            | Architecture |
| ----------------------- | ------------ |
| NixOS 25.05             | amd64        |
| Rocky Linux 9.7         | amd64, arm64 |
| Rocky Linux 10.1        | amd64, arm64 |
| Ubuntu 25.04            | amd64, arm64 |
| Ubuntu 25.10            | amd64, arm64 |
| Ubuntu 26.04 Snapshot 1 | amd64, arm64 |

The file can be downloaded and connected locally using commands (run as administrator):

=== "PowerShell"

    ``` { .powershell .no-select }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" `
      -Name DistributionListUrlAppend `
      -Value "file:///path/to/distributions.json" `
      -Type String -Force
    ```

=== "Command Prompt"

    ``` { .batch .no-select }
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss" ^
    /v "DistributionListUrlAppend" ^
    /t REG_MULTI_SZ ^
    /d "file:///path/to/distributions.json" ^
    /f
    ```

!!! info
    Change `file:///path/to/distributions.json` to real file path.


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
