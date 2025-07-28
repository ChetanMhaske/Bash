#bash

echo "SYSTEM INFORMATION"

os_name=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

kernel_version=$(uname -r)

echo "OS         : $os_name"
echo "Kernel     : $kernel_version"
echo "Uptime     : $(uptime -p)"

cpu_model=$(grep -m1 'model name' /proc/cpuinfo | cut -d ':' -f2 | sed 's/^ //')
cpu_cores=$(nproc)

echo "CPU        : $cpu_model"
echo "CPU Cores  : $cpu_cores"

mem_info=$(free -h )
echo "Memory     : $mem_info"

disk_info=$(df -h / )
echo "Disk (/): $disk_info"

ip_address=$(ip -4 addr show | grep inet | grep -v 127.0.0.1 | awk '{print $2}' | cut -d/ -f1 | head -n1)
echo "IP Address : ${ip_address:-Unavailable}"


<<comment
Command/Flag	                    Meaning
`cat /etc/os-release	            grep PRETTY_NAME`
uname -r	                        Retrieves the current Linux kernel version
uptime -p	                        Displays how long the system has been running
grep 'model name' /proc/cpuinfo	  Shows the CPU model name
nproc	                            Counts number of available CPU cores
free -h	                          Displays memory info in a human-readable format
df -h /	                          Shows disk space usage for the root partition
`ip -4 addr show ...	            grep inet
comment
