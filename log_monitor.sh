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
