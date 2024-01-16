#! /bin/bash

for command in ls pwd date
    do 
        echo ---------$command----------
        $command
    done 

echo Another example below

for item in *
    do 
        if [ -d $item ]             #lists all directories
            then
                echo $item 
        fi
    done 
echo Another example below

for item in *
    do 
        if [ -f $item ]
            then
                echo $item          #lists all files
        fi
    done 