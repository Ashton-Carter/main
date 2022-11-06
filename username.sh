#! /bin/bash
# username.sh
# author:
# date:
echo -n "Enter a username.  Can only contain lowercase letters, underscores, and numbers.  Must be between 3 and 12 characters long"
read -r USERNAME
while echo "$USERNAME" | grep -E -v "^[a-z][a-z_0-9]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid usernmae"
	echo -n "Enter a username: "
	read -r USERNAME
done 
echo "Thank you"
