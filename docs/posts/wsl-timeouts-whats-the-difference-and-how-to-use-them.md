---
draft: false
date:
  created: 2025-11-07
  updated: 2025-11-07
authors:
  - greengorych
categories:
  - WSL
description: >-
  Explanation of how instanceIdleTimeout and vmIdleTimeout in .wslconfig control WSL and instance shutdown behavior.
---

# WSL Timeouts: What's the Difference and How to Use Them

I recently published a post with my [template](https://greengorych.io/blog/complete-wslconfig-reference-and-template/) `.wslconfig` configuration file. But I don't think simply sharing the configuration is enough. From my experience, I know that information is better perceived when accompanied by real-world usage examples. So, I decided to write a series of posts explaining the settings in this file in more detail and providing examples of their use.

<!-- more -->

WSL has two global settings for managing idle time: `instanceIdleTimeout` and `vmIdleTimeout`. Below is an explanation of the differences between them, how they work, and usage examples.

## `instanceIdleTimeout`

This is the amount of time (in milliseconds) a WSL 2 instance remains active after all user processes have terminated, or automatic termination is disabled.

``` ini
[general]

# Duration the WSL instance remains running after going idle
# Dependencies: None
# Default: 15000 (15 seconds)
# Values:
# - -1: Never shut down the instance automatically
# - 0: Shut down immediately after all processes exit
# - Positive integer: Shut down after the specified idle time (in milliseconds)
instanceIdleTimeout=15000
```

## `vmIdleTimeout`

This is the amount of time (in milliseconds) a WSL 2 process continues to exist after all instances have terminated, or automatic termination is disabled.

``` ini
[wsl2]

# Duration before shutting down the WSL virtual machine when idle
# Dependencies: None
# Default: 60000 (60 seconds)
# Values:
# - -1: Never shut down automatically
# - 0: Shut down immediately after all WSL instances have exited
# - Positive integer: Shut down after the specified idle time (in milliseconds)
vmIdleTimeout=60000
```

## How It Works

In practice, it looks like this:

- First, `instanceIdleTimeout` is triggered: if there are no active user processes in the WSL instance, it shuts down after the specified time.
- After all instances have stopped, the `vmIdleTimeout` timer starts, and when it expires, the WSL 2 process is completely terminated.

If these parameters are not explicitly set in .wslconfig, the default values ​​are used:

- `instanceIdleTimeout=8000 (8 seconds)`
- `vmIdleTimeout=60000 (60 seconds)`

Both parameters must be in the appropriate sections of the WSL 2 global configuration file:

``` powershell
C:\Users\<UserName>\.wslconfig
```

Where `<UserName>` is the Windows username.

## Usage Examples

**Automatic Instance Shutdown**

I restart instances quite often, especially during setup or testing. To avoid wasting time with shutdown commands, I set this:

``` ini
instanceIdleTimeout=0
```

After terminating the terminal session, for example, with `Ctrl + D`, the instance shuts down immediately.

To keep the WSL 2 process running between instance restarts, I left the default value:

``` ini
vmIdleTimeout=60000
```

This way, to restart the instance, simply close VS Code, end the terminal session, and then start it.

**Always-running instance**

Another useful setting:

``` ini
instanceIdleTimeout=-1
```

This parameter completely disables automatic instance shutdown after user processes terminate.

**Terminating an instance and WSL**

Finally, here's an option I often use when testing `.wslconfig` settings. To avoid manually terminating WSL each time with the command:

``` powershell
wsl --shutdown
```

I set both timeouts to zero, and WSL terminates immediately after the instance is stopped.

There are other timeouts that I plan to cover in future posts, but describing them in the context of the options that accompany them.
