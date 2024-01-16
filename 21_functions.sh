#! /bin/bash

function Hello()    {       #one way to declare a function
    echo Hello!
}

print(){
    echo $1
}

multiple_arguments(){
    echo $1 $2 $3
}

quit()  {                   #another way to declare a function
    exit
}  

Hello                       #calling function
print My                    #passing argument
print name
print is
print Dhruv
multiple_arguments Hello World Again
echo hi
quit                        #calling function
