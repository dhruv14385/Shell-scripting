#! /bin/bash

echo -e "Enter file name: \c"           #\c to keep cursor on the same line. -e to enable use of \c
read file_name

if [ -f $file_name ]                    #-f to check if the file exist and it's a regular file and not a directory
then 
    if [ -w $file_name ]
    then 
        echo Type some data. To quit press ctrl+d
        cat >> $file_name
    else 
        echo The file does not have write permission    #change file permission with chmode -w filename
    fi 
else 
    echo $file_name file not found
fi 