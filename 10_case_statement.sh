#! /bin/bash

echo -e "Enter some character: \c"
read value

case $value in 
    [a-z] )
        echo User entered $value which is between a to z ;;
    [A-Z] )
        echo User entered $value which is between A to Z ;;     #may need to use LANG=C
    [0-9] )
        echo User entered $value which is between 0 to 9 ;;
    ? )
        echo User entered $value which is special character ;;
    * )
        echo "Unknown input" ;;
esac
    