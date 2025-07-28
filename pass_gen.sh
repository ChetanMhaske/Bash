#bash

echo "simple password generator"
echo "Enter Length of password: "

read pass_len

for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$pass_len
done


<<comment
Command/Flag		 Meaning
read pass_len		 Takes user input for password length
seq 1 5	  		 Generates a sequence from 1 to 5 to run the loop 5 times
openssl rand -base64 48	 Generates a secure random 48-byte string encoded in Base64
cut -c1-$pass_len	 Trims the password to the user-defined length
comment
