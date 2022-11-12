# 10 Commands to Collect System and Hardware Info in Linux
  1. How to View Linux System Information.
     - `uname`
     - Network host name: `uname -n`
     - Kernel version: `uname -v`
     - Hardward type: `uname -m`
     - Show all informations: `uname -a`
  2. How to View Linux System Hardware Information
     - `lshw`
     - Show all informations: `lshw`
     - Show summary: `lshw -short`
  3. How to View Linux CPU Information
     - `lscpu`
  4. How to Collect Linux Block Device Information
     - `lscpu`
  5. Linux check hard disk space with df command
     - `df -T`
     - Show with beauty format: 
       - Human format: `df -h`
       - Show output size in one-megabyte: `df -m`
       - Show output size in one-kilobyte blocks (default): `df -k`
     - Display all fields: `df --o`
     - Limit listing to file systems of given type: `df -T ext4`
     - To list all but exclude ext2: `df -x ext2`
  6. 30 Linux System Monitoring Tools Every SysAdmin Should Know
     - Process activity monitoring command: `top`
     - Virtual memory statistics: `vmstat 3`
     - Find out who is logged on and what they are doing: `w username`
     - Tell how long the Linux system has been running: `uptime`
     - Displays the Linux processes: `ps -A`
     - Get real-time network statistics on Linux: `sudo apt install iptraf && iptraf`
     - Interactive process viewer: `sudo apt install htop && htop`
     - Advanced Linux system & process monitor: `sudo apt install atop && atop`
     - A console-based network traffic monitor: `sudo apt install vnstat && vnstat`
     - Linux systems administrator, tuner, benchmark tool: `sudo apt install nmon && nmon`
     - Scanning network for open ports with nmap command: `sudo apt install nmap && nmap`

# References
1. https://www.tecmint.com/commands-to-collect-system-and-hardware-information-in-linux/
2. https://www.cyberciti.biz/tips/top-linux-monitoring-tools.html
3. https://www.cyberciti.biz/faq/install-iptraf-centos-redhat-fedora-linux/
4. https://www.cyberciti.biz/tips/linux-scanning-network-for-open-ports.html