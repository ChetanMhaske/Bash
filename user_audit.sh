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

<<comment
Command/Section	            Meaning
cut -d: -f1 /etc/passwd	    Lists all user accounts on the system by extracting usernames
lastlog2	                  Displays the last login of all users (used in modern Kali, replaces lastlog)
grep -v "Never logged in"	  Filters out users who have never logged in
last	                      Shows recent login sessions including terminal, IP, and duration
getent group sudo	          Checks if sudo group exists and lists its members
comment
