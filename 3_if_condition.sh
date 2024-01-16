#! /bin/bash
count=10
if [ $count -gt 9 ]
    then 
        echo condition is true
fi

if [ $count > 9 ]
    then 
        echo condition is true
fi

if (( $count > 9 ))
    then 
        echo condition is true
fi

word=abc
if [ $word == "ac" ]
    then 
        echo condition is true
    else
        echo condition is false
fi

# =  compare if two strings are equal
# !=  compare if two strings are not equal
# -n  evaluate if string length is greater than zero
# -z  evaluate if string length is equal to zero 

# Examples: 
# [ s1 = s2 ]  (true if s1 same as s2, else false)
# [ s1 != s2 ]  (true if s1 not same as s2, else false)
# [ s1 ]   (true if s1 is not empty, else false)
# [ -n s1 ]   (true if s1 has a length greater then 0, else false)
# [ -z s2 ]   (true if s2 has a length of 0, otherwise false)

# Number Comparisons: 
# ------------------------------------
# -eq compare if two numbers are equal
# -ge compare if one number is greater than or equal to a number
# -le  compare if one number is less than or equal to a number
# -ne  compare if two numbers are not equal
# -gt  compare if one number is greater than another number
# -lt  compare if one number is less than another number 