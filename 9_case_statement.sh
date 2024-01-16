#! /bin/bash

vehicle=$1

case $vehicle in 
    "car" )
        echo Rent of $vehicle is \$100 ;;       #please note escape sign
    "van" )
        echo "Rent of $vehicle is \$80" ;;
    "truck" )
        echo "Rent of $vehicle is \$200" ;;
    * )
        echo "Unknown vehicle" ;;
esac
    