---
draft: false
date:
  created: 2025-11-12
authors:
  - greengorych
categories:
  - General
  - WSL
description: >-
  Current state of my WSL configuration repository and future plans.
---

# WSL Configurations: Current State and Roadmap

In parallel with writing new posts and developing the website, I continue working on WSL configurations. I collect, test, and document settings, gradually publishing them in the [wsl-configs](https://github.com/greengorych/wsl-configs) repository.

<!-- more -->

Currently available:

- `wsl.conf`
- `.wslconfig`
- `wsl-distribution.conf`

Upcoming plans:

- Complete the review, add the remaining parameters to `.wslconfig`, and improve its structure
- Resume work on the universal Out-of-Box Experience (OOBE) script
- Review and document the Windows Terminal profile template `terminal-profile.json`
- Prepare a documented distribution configuration template `distributions.json`
- Add a `cloud-init` source configuration file and possibly a few example configurations

I'd also like to highlight WSLg, the subsystem that enables running graphical applications in WSL. There is currently very little activity around it, and judging by the main repository, developer efforts seem to be focused on WSLA. As far as I can tell, this acronym stands for WSL for Applications, a new subsystem that will likely replace WSLg in the future.

Therefore, I don't currently plan to work on `.wslgconfig`.
