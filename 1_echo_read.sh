#! /bin/bash
# This is a comment
echo Hello World            #works without " "            
#Mentioned below are System variables. Have to be CAPS.
echo $BASH                  #shows which bash
echo $BASH_VERSION          #shows bash version
echo $HOME                  #Home directory
echo $PWD                   #print working directory
#User defined variables
name=Dhruv
echo My name is $name
#read command
echo Enter name: 
read name1
echo Entered name is $name1
#Multiple names
echo Enter 3 names:
read name2 name3 name4
echo Entered names are $name2 $name3 $name4 

