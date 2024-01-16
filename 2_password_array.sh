#! /bin/bash
#same line and secret flag
read -p 'Username: ' user_var           #-p for same line
read -sp 'password: ' pass_var
echo 
echo "username: $user_var"
echo "password: $pass_var"
#array for -a flag
echo "Enter 3 names: "
read -a names
echo "Names: ${names[0]}, ${names[1]}, ${names[2]}"