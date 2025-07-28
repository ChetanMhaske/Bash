#bash

echo "simple password generator"
echo "Enter Length of password: "

read pass_len

for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$pass_len
done


<<comment
echo "Enter Length...":-	Prompts the user to input the desired password length
read pass_len:-	Stores the user’s input into the variable pass_len
for p in $(seq 1 5); do ...:-	Loops 5 times to generate 5 different passwords
openssl rand -base64 48:-	Generates 48 random bytes and encodes them in Base64 (for high entropy)
cut -c1-$pass_len:-	Trims the Base64 string to the user-defined length
>>
