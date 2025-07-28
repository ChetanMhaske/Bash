# ⚙️ Bash Toolbox

A growing collection of Bash scripts for system administration and cybersecurity tasks.

## 📂 Scripts Included

| Script                   | Description                                                    |
|--------------------------|----------------------------------------------------------------|
| `password_generator.sh` | Generates 5 strong random passwords using OpenSSL + Base64     |
| `system_info.sh`        | Displays OS, kernel, uptime, CPU, memory, disk, and IP info   |
| `open_ports.sh`         | Checks for open TCP/UDP ports using `ss` or `netstat`         |
| `user_audit.sh`         | Lists all system users, last login, and highlights sudo users |
| `log_monitor.sh`        | Monitors failed SSH logins, sudo usage, and brute-force signs via journalctl |

## 🔧 Usage

```bash
git clone https://github.com/ChetanMhaske/Bash.git
cd Bash
chmod +x script_name.sh
./script_name.sh
