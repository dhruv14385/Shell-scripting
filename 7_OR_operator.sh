#! /bin/bash

age=25

if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]       #OR is represented by pipe symbol
    then 
        echo age is valid
    else
        echo age is not valid
fi 

if [ "$age" -gt 18 -o "$age" -lt 30 ]           #another way
    then 
        echo age is valid
    else
        echo age is not valid
fi 

if [[ "$age" -gt 18 || "$age" -lt 30 ]]         #yet another way
    then 
        echo age is valid
    else
        echo age is not valid
fi 