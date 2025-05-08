# Systemctl plugin

This plugin provides easy aliases and functions for working with `systemctl` commands, making service management more convenient. It includes both system-wide and user-level service commands, as well as functions for toggling, restarting, and checking service statuses.

## Installation

To use this plugin, add `systemctl` to the plugins array in your `.zshrc` file:

```
plugins=(... systemctl)
```
 > Once added, either restart your terminal or run `source ~/.zshrc` to apply the changes.

## Commands and Aliases 

| Alias | Command | Description |
|---------------|-------------|-------|
| `sc` | `sudo systemctl` | System-wide systemctl |
| `scr` | `sudo systemctl restart` | Restart a system-wide service |
| `scs` | `sudo systemctl start` | Start a system-wide service | 
| `scp` | `sudo systemctl stop` | Stop a system-wide service |
| `scst` | `sudo systemctl status` | Check the status of a system-wide service |
