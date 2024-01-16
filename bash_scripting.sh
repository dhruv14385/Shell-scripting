#! /bin/bash
echo "Hello World"
echo Our shell is $BASH
echo Our shell version is $BASH_VERSION
echo Our home directory is $HOME
echo Our current working directory is $PWD
name=Dhruv      #variable assign
echo The name is $name

echo "Enter name: "
read name 
echo "Entered name: $name"

echo "Enter name: "
read name1 name2 name3 
echo "Entered name: $name1 $name2 $name3"

read -p 'username: ' user_var       #-p for same line
echo "Your username is $user_var"

read -sp 'password: ' pass_var      #-s for silent       
echo "Your password is $pass_var"

echo "Enter names: "
read -a names                       #Array
echo "Names: ${names[0]}, ${names[1]}" 

echo "Enter name: "
read 
echo "Entered name: $REPLY"         #REPLY is the default variable assigned to an input

echo -e "Enter file name: \c"       #\c to keep curser on the same line. -e to enable purpose of \c 
                                    # if you don't use -e then echo will print \c
read filename 
if [-e $filename]                   #-e to check if the file exist
then                                #-f to check if the file is regular file or not
    echo "$filename found"          #-d to check if the directory exist or not
else                                #-s to check if the file is empty or not
    echo "$filename not found"      #-w to check if the file has write permission 
fi 

chmod -w filename                   #to remove write permission
chmod +w filename                   #to add write permission

if [ -w $filename]                  #if file has write permission

cat filename                        #it will show file content for existing file
cat > $filename                     #data will be over written
cat >> $filename                    #data will be appended (added)
touch filename                      #create a file

if [ "$age" -gt 18 ] && [ "$age" -lt 35 ]       #'AND' operator
if [ "$age" -gt 18 -a "$age" -lt 35 ]           #same as above
if [[ "$age" -gt 18 && "$age" -lt 35 ]]         #same as above

if [ "$age" -gt 18 ] || [ "$age" -lt 35 ]       #'OR' operator

num1=25
num2=5
echo $(( num1 + num2 ))
echo $(( num1 * num2 ))
echo $(expr num1 + num2 )
echo $(expr num1 \* num2 )
echo "20.5+5" | bc                              #takes into account decimal numbers
echo "scale=2;20.5/5" | bc                      #output=4.10 if u don't use scale, output will be 4
echo "$num1+$num2" | bc
echo "scale=2;sqrt($num)" | bc -l               #-l for maths library

vehicle=$1
case $vehicle in 
    "car" )
        echo "Rent of $vehicle is $100." ;;
    "van" )
        echo "Rent of $vehicle is $120." ;;
    "truck" )
        echo "Rent of $vehicle is $150." ;; 
    * )
        echo "Unknown vehicle" ;;

esac

echo -e "Enter some character: \c"
read value 

case $value in 
    [a-z] )
        echo "User entered $value a to z" ;;
    [A-Z] )
        echo "User entered $value A to Z" ;;
    [0-9] )
        echo "User entered $value 0 to 9" ;;
    * )
        echo "Unknown input" ;;
esac 

name=('dhruv' 'swati' 'pahal')
echo "${name[@]}"       #dhruv swati pahal
echo "${name[0]}"       #dhruv 
echo "${!name[@]}"      #0 1 2 
echo "${#name[@]}"      #3 - Length of array which means number of elements in the array
unset name[0]           #Dhruv will be removed

n=1
while [ $n -le 10 ]
do 
    echo "$n"
    n=$(( n+1 ))
    sleep 1             #Takes a pause of 1 second 
done 

while read p            #This script will read the content of filename.sh file
do 
    echo $p
done < filename.sh 

cat filename.sh | while read p            #This script will read the content of filename.sh file
do 
    echo $p
done 

n=1
until [ $n -ge 10 ]     #Until loop is similar to while loop
do 
    echo "$n"
    n=$(( n+1 ))
    sleep 1             #Takes a pause of 1 second 
done 

for i in 1 2 3 4 5
do 
    echo $i
done 

for i in {1..10}        #increment 1 to 10
do 
    echo $i
done 

for i in {1..10..2}        #increment in steps of 2 like 1 3 5 7 9
do 
    echo $i
done 

for (( i=0; i<5; i++))        #increment in steps of 2 like 1 3 5 7 9
do 
    echo $i
done 

for command in ls pwd date 
do 
    echo "---------$command-----------"
    $command 
done 

select name in Dhruv Pahal Swati 
do
    echo "$name selected"
done

select name in Dhruv Pahal Swati 
do
    case $name in 
    Dhruv)
        echo Dhruv chosen
        ;;
    Pahal)
        echo Pahal chosen
        ;;
    Swati)
        echo Swati chosen
        ;;
done


for (( i=1 ; i<=10 ; i++ ))
do 
    if [ $i -gt 5 ]
    then 
        break
    fi
    echo "$i"
done 

for (( i=1 ; i<=10 ; i++ ))
do 
    if [ $i -eq 3 -o $i -eq 6 ]     #-o is for or
    then 
        continue                    #skips 3 nd 6
    fi
    echo "$i"
done 

function Hello(){
    echo "Hello world!"
}
quit () {
    exit
}
Hello
echo "foo"
quit

function print(){
    echo $1
}
quit () {
    exit
}
print Hello     #argument for print function
print World
print Again
echo "foo"
quit

function print(){
    echo $1 $2 $3
}
quit () {
    exit
}
print Hello World Again    #argument 1,2,3 for print function
echo "foo"
quit


