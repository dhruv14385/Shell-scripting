#! /bin/bash

n=1
until [ $n -ge 10 ]     #note difference between ge (greater or equal to) and gt (greater than)
do 
    echo $n
    n=$(( n+1 ))
done 