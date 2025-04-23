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
```

---

### Why you chose this task to automate?

It combines a few key tasks that are essential for maintaining a smooth-running system, especially in a development or operations environment.
1. **Routine Maintenance**
Checking system updates, disk usage, and memory usage are tasks you often perform as part of routine system maintenance. Automating these checks saves time and ensures they don't get forgotten, which helps in preventing potential issues (like running out of disk space or missing critical updates).

2. **Centralized Monitoring**
In a collaborative environment like GitHub Codespaces, it's useful to have a simple way to monitor the system health from the terminal. This allows team members or developers to quickly check the system's status without navigating to different tools or running multiple commands. It provides a **centralized overview** in a single command.

3. **Consistent Updates and Monitoring**
Keeping your system updated is crucial for security and performance. By automating the check for updates and displaying the results, you can ensure that your development environment in GitHub Codespaces is always up-to-date with minimal effort.

4. **Time-Saving**
Rather than running multiple commands (like `sudo apt update`, `df -h`, `free -h`) separately, having a function like `system_health_check` streamlines the process into one concise command. It can help maintain productivity, especially when you're focused on coding rather than system maintenance.

5. **Convenient in Codespaces**
GitHub Codespaces is a cloud-based development environment, and running periodic health checks can be even more important there because you don’t want to be caught off-guard by running out of resources or missing updates in a cloud setup. Automation here ensures that developers are always aware of system health, without needing to manually track disk space or memory usage.

---

### Any challenges you faced or lessons learned?
Setting up the `system_health_check` function in GitHub Codespaces can be confusing at first. Below are some common challenges and how to fix them:

| **Challenge**           | **Fix**                                                                 |
|-------------------------|-------------------------------------------------------------------------|
| Wrong shell config      | Check your shell with `echo $SHELL`                                    |
| Function doesn’t run    | Add it to the correct config file (`~/.bashrc` or `~/.zshrc`)          |
| Changes not applied     | Run `source ~/.bashrc` (or appropriate config file)                    |
| Sudo issues             | Verify that Codespaces allows `sudo`, or adapt the script accordingly  |
| Function disappears     | Save the function in your shell config for it to persist between sessions |
