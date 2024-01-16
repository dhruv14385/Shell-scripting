#! /bin/bash

print(){
    local name=$1                   #compare output w/o making it local
    echo The name is $name
}

name=Tom                            #Global variable
echo The name is $name : Before

print Max

echo The name is $name : After  