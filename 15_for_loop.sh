#! /bin/bash

for i in 1 2 3 4 5 
do 
    echo $i 
done 

for i in {1..10} 
do 
    echo $i 
done 

for i in {1..10..2}         #{START..END..INCREAMENT} 
do 
    echo $i 
done 

for (( i=0; i<5; i++ )) 
do 
    echo $i 
done 


