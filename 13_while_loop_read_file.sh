#! /bin/bash

while read p         
    do
        echo $p
    done < 13_while_loop_read_file.sh 

cat 13_while_loop_read_file.sh | while read p
do  
    echo $p
done

while IFS = read -r line                #IFS command not found on Git Bash
do
    echo $line
done < 13_while_loop_read_file.sh