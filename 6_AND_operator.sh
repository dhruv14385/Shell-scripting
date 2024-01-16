#! /bin/bash

age=25

if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
    then 
        echo age is valid
    else
        echo age is not valid
fi 

if [ "$age" -gt 18 -a "$age" -lt 30 ]       #another way to use AND operator
    then 
        echo age is valid
    else
        echo age is not valid
fi 

if [[ "$age" -gt 18 && "$age" -lt 30 ]]     #and another way
    then 
        echo age is valid
    else
        echo age is not valid
fi 