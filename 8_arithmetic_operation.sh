#! /bin/bash

num1=20
num2=6
num3=20.5

echo $((num1+num2))                 #integer only
echo $((num1-num2))
echo $((num1*num2))
echo $((num1/num2))                 #floating point required
echo $(expr $num1 + $num2)           
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2)         #please note 
echo $(expr $num1 / $num2)
echo "$num1+$num2" | bc             #not working. look into it.

