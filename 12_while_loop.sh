#! /bin/bash
n=1

while [ $n -le 10 ]         #or (( $n <= 10 ))
    do
        echo $n
        n=$(( n+1 ))        #or you can use (( n+1 )) or (( n++ )) or (( ++n ))
        sleep 2             #optional. loop will pause for 2 seconds.
    done