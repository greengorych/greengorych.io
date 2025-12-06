---
description: >-
  Reference information for the WSL Out-of-Box Experience (OOBE) script, including configuration parameters, execution behavior, and distribution-specific details.
---

# OOBE script

The Out-of-Box Experience script, or OOBE script for short, is a script that runs during the final stage of a distribution's installation.

## Overview

---

- Configured using the [`wsl-distribution.conf`][wsl-distribution-conf]{ data-preview } configuration file
- Located depending of the distribution
- Defined by the [`oobe.command`][command]{ data-preview } parameter
- Run as the user ID specified by [`oobe.defaultUid`][defaultUid]{ data-preview }
- Does not run when importing a distribution.
- Not present in all WSL distributions
- Prompts the user to create an account and set a password
- Adds the user to groups (the set of groups is determined by the distribution family)

!!! info
    On Ubuntu, it waits for `cloud-init` to complete, and if a user was created by it, the creation step is skipped.

[wsl-distribution-conf]: wsl-distribution-conf.md
[command]: wsl-distribution-conf.md/#command
[defaultUid]: wsl-distribution-conf.md/#defaultuid
