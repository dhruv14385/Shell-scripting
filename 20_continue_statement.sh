#! /bin/bash

for (( i=1 ; i<=10 ; i++ ))
do 
    if [ $i -eq 3 -o $i -eq 6 ]
    then 
        continue                    #skips 3 and 6
    fi 
    echo $i
done 