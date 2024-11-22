#!/bin/bash
# Script to add a local user

# Script should be execute with sudo/root access

if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or root."
	exit 1
fi


# user should provide atleast one argument as username else guide him
 
if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo "Create a user with USER_NAME and comments field of COMMENT"
	exit 1
fi

# store 1st argument as user name

USER_NAME="${1}"
echo $USER_NAME

# in case of more than one argument, store it is account comments

shift 
COMMENT="${@}"
echo $COMMENT

# create a password
 
PASSWORD=$(date +%s%N)
#echo $PASSWORD


# create the user

useradd -c "${COMMENT}" -m $USER_NAME

#Check if user is Successfully created or not

if [[ $? -ne 0 ]]
then 
	echo "Failed to Create the user"
	exit 1
fi
 

# Set the Password for User

echo $PASSWORD | passwd --stdin $USER_NAME


# check if password is successfully set or not

if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

# force password change on first login

passwd -e $USER_NAME

# Display the USername Password and the host where user has been Created

echo 
echo "USERNAME : $USER_NAME"
echo 
echo "PASSWORD : $PASSWORD"
echo
echo "HOSTNAME :$(hostname)"


