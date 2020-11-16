#! /bin/bash
# username.sh
# Greta Cannon
echo "Enter a username: "
echo "The user name must start with a letter and include only digits, lowercase letters,and an underscore."
echo "It must also be at least 3 characters and no more than 12"
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][abcdefghijklmnopqrstuvwxyz0123456789_]{2,11}$" > /dev/null 2>&1
do
	echo "That is not valid: "
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
