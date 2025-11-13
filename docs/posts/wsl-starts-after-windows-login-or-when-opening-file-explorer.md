---
draft: false
date:
  created: 2025-11-13
authors:
  - greengorych
categories:
  - WSL
description: >-
  WSL instances may start automatically after Windows login or when opening File Explorer and how to avoid it.
---

# WSL starts after Windows login or when opening File Explorer

While going through old materials previously posted on Reddit, I came across a post about a WSL instance starting on its own. Today, I decided to update and repost it.

<!-- more -->

I noticed unusual behavior in WSL: after enabling the debug console (`debugConsole=true`) in the `.wslconfig` configuration, one or more WSL instances would automatically start in two situations:

- Right after logging into Windows.
- Every time I opened File Explorer.

After a little research, I realized that this happens if I previously opened files located within WSL using the path `\\wsl$\<DistroName>\...`. These files appear in File Explorer's "Recent" section.

This can also happen if shortcuts to such files are created or pinned to File Explorer's Quick Access toolbar.

**Workarounds**:

- Clear File Explorer history in Folder Options.
- Disable "Show recently used files" in Folder Options.
- Remove shortcuts containing the path `\\wsl$\...`.
- Unpin such shortcuts from the Quick Access toolbar.
- Avoid opening files directly from `\\wsl$\...` using Windows applications.
