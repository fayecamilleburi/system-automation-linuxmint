# System Health Check Script

This script provides a quick overview of your system's health by checking for:

- Available system updates
- Disk usage
- Memory usage

Perfect for routine maintenance on Debian-based systems like Ubuntu or Linux Mint.

---

## Function: `system_health_check`

### What It Does

1. **Checks for System Updates**
   - Runs `sudo apt update` to refresh package info
   - Lists available updates (upgradable packages)

2. **Checks Disk Usage**
   - Uses `df -h` to show human-readable disk usage
   - Filters output to show only actual filesystems (`/dev/` entries)

3. **Checks Memory Usage**
   - Displays current RAM and swap usage using `free -h`

---

## Sample Output

```bash
🔍 System Health Check

📦 Checking for system updates...
Listing...
firefox/stable 123.0.1 amd64 [upgradable from: 123.0]

💾 Checking disk usage...
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   15G   33G  32% /

🧠 Checking memory usage...
              total        used        free      shared  buff/cache   available
Mem:           7.7G        2.1G        3.3G        190M        2.3G        5.0G
Swap:          2.0G          0B        2.0G
