#bash
echo "Scanning for open TCP/UDP ports..."
echo

ss -tuln 
    
echo "Optional "
netstat -tuln

<<comment
Flag	Meaning
-t	Show TCP sockets
-u	Show UDP sockets
-l	Show only listening sockets (services waiting for incoming connections)
-n	Show numeric addresses and ports (e.g., 127.0.0.1:22 instead of localhost:ssh)
comment