#bash

echo "SYSTEM INFORMATION"

#Operating System

os_name=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')


#Kernel
kernel_version=$(uname -r)

echo "OS         : $os_name"
echo "Kernel     : $kernel_version"
echo "Uptime     : $(uptime -p)"

# CPU Info
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
