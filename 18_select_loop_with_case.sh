#! /bin/bash

select name in dhruv mayuresh milind
do 
    case $name in 
    dhruv)
        echo dhruv selected ;;
    mayuresh)
        echo mayuresh selected ;;
    milind)
        echo milind selected ;;
    *)
        echo Please select from 1-3
    esac
done 