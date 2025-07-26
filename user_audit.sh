#bash
echo "User Audit Report"

echo "All users:"
cut -d: -f1 /etc/passwd

echo
echo "Last Login for users:"
lastlog2 | grep -v "Never logged in" # lastlog is not used for kali Linux now

echo "Recent Login Sessions(from last):"
last
echo

echo
echo "Sudo/Root users:"
getent group sudo || getent group wheel
