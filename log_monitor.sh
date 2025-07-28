#bash

echo "Threat Detection Log Monitor"
echo "Analyzing logs from journalctl"
echo

# Failed SSH login attempts
echo "Failed login attempts:"
journalctl -q -o short-iso -u ssh | grep "Failed password" | tail -n 10
echo

# Sudo usage tracking
echo "Sudo usage:"
journalctl -q -o short-iso | grep "sudo" | tail -n 10
echo

# Possible brute-force attacks (SSH authentication failures)
echo "SSH brute-force signs:"
journalctl -q -o short-iso | grep "authentication failure" | tail -n 10



<<comment
Command/FlagMeaning
journalctl -u sshFilters logs specifically for the SSH service
-qQuiet mode – suppresses headers and extra info
-o short-isoFormats logs with ISO timestamps for readability
grep "Failed password"Filters lines related to failed SSH login attempts
grep "sudo"Captures usage of the sudo command (privilege escalation)
grep "authentication failure"Searches for signs of brute-force or failed login attempts
tail -n 10Displays the last 10 matching entries
comment
