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
| `sctp` | `sudo systemctl stop` | Stop a system-wide service |
| `scst` | `sudo systemctl status` | Check the status of a system-wide service |
| `sce` | `sudo systemctl enable` | Enable a system-wide service | 
| `scd` | `sudo systemctl disable` | Disable a system-wide service |
| `scre` | `sudo systemctl reload` | Reload a system-wide service | 
| `scu` | `systemctl --user` | User-level systemctl |
| `scur` | `systemctl --user restart` | Restart a user-level service |
| `scus` | `systemctl --user start` | Start a user-level service |
| `scup` | `systemctl --user stop` | Stop a user-level service | 
| `scust` | `systemctl --user status` | Check the status of a user-level service |
| `scue` | `systemctl --user enable` | Enable a user-level service |
| `scud` | `systemctl --user disable` | Disable a user-level service |
| `scure` | `systemctl --use reload` | Reload a user-level service |
| `scls` | `systemctl list-units --type=service` | List active services | 
| `sclsa` | `systemctl list-units --type=service --all` | List all services | 
| `sclsf` | `systemctl list-units --type=service --failed` | List failed services | 
| `sclsr` | `systemctl list-units --type=service --state=runnings` | List running services | 
| `sclt` | `systemctl list-timers` | List active timers | 
| `sclta` | `systemctl list-timers --all` | List all timers | 
| `jc` | `sudo journalctl` | View system logs | 
| `jcf` | `sudo journalctl -f` | Follow system logs |
| `jcb` | `sudo journalctl -b` | View the logs from the current boot | 
| `jcl` | `sudo journalctl --since "1 hour ago"` | View logs from the past hour |
| `jcu` | `sudo journalctl -u` | View logs for a specific service |

## Functions 

 - `scheck`: Check the status and enablement of a service 
    - Usage: `scheck <service_name>`
    - Example: `scheck httpd`
 - `stoggle`: Toggle a service (start if stopped, stop if started)
    - Usage: `stoggle <service_name>`
    - Example: `stoggle httpd`
 - `srestart`: Restart a service and show its status
    - Usage: `srestart <service_name`
    - Example: `srestart httpd`
 - `slogs`: Show the last few log entries for a service
    - Usage: `slogs <service_name> [number_of_lines]`
    - Example: `slogs httpd 50`
 - `swatchlog`: Watch the logs of a service in real-time
    - Usage: `swatchlog <service_name>`
    - Example: `swatchlog httpd` 
 - `smulti`: Manage multiple services at once (start, stop, restart, or check status)
    - Usage: `smulti [start|stop|restart|status] <service1> <service2> ...`
    - Example: `smulti start httpd mariadb`
 - `sfind`: Search for systemd units 
    - Usage: `sfind <search_pattern>`
    - Example: `sfind http`

