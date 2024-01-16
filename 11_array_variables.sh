#! /bin/bash

os=('ubuntu' 'windows' 'centos')

echo ${os[@]}
echo ${os[1]}
echo ${!os[@]}          #shows indices of array        
echo ${#os[@]}          #shows length (number of elements within) of array      
os[3]='linux'           #to add an array. it will be added after running echos before.  
echo ${os[@]}
os[0]='apple'           #will replace first array i.e. ubuntu
echo ${os[@]}
unset os[2]             #to remove an array element
echo ${os[@]}
