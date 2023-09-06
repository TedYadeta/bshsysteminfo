
#!/bin/bash
# systeminfo.sh: A clumsy port of the systeminfo command
# from Windows OS.
 
# Run 'clear' to avoid muddling information from any above executions
clear
  
# HOSTNAME
echo "HOSTNAME:"
hostname -s
echo;
# OS NAME
echo "OS:"
cat /etc/os-release | grep "PRETTY_NAME" | cut -b 13-50
echo;
# KERNEL VERSION
echo "KERNEL VERSION:"
uname -r
echo;
# SYSTEM BOOT TYPE
echo "SYSTEM UPTIME:"
uptime -p
echo;
# SYSTEM TYPE (ARCHITECTURE)
echo "SYSTEM TYPE:"
arch
echo;
# PROCESSOR
echo "PROCESSOR:"
cat /proc/cpuinfo | grep "model name" | cut -b 14-50
echo;
# BOOT DEVICE
echo "BOOT DEVICE:"
lsblk | grep "boot"
echo;
# TIME ZONE
echo "TIME ZONE:"
cat /etc/timezone
echo;
# MEMORY
echo "MEMORY:"                                                                                                                  
lsmem | grep "Total online memory"
echo;
# NETWORK CARD(S)
echo "NETWORK CARD(S):"
lspci | grep 'Ethernet'
echo;
