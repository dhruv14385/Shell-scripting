#! /bin/bash

echo -e "Enter file name: \c"           #\c to keep cursor on the same line. -e to enable use of \c
read file_name

if [ -e $file_name ]                    #-e to check if the file exist or not
then 
    echo $file_name found
else 
    echo $file_name not found
fi 