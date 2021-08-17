#!/bin/bash

# Chapter 5: Varianbles

HELLO=hello
function hello {
    local HELLO="local hello"
    echo $HELLO
}
hello
echo $HELLO

# Chapter 6: Conditionals

FIRST_NAME="Mohit"
LAST_NAME="Sharma"

PRINT_FIRST_NAME=0

if [ PRINT_FIRST_NAME = 1 ]; then
    echo $FIRST_NAME
else
    echo $LAST_NAME
fi

# Chapter 7: Loops for, while and until

# For Loop
echo "ls -al"
echo $(ls -al)
for i in $(ls -al); do
    echo $i
done


for i in $(seq 2 2 10);
do
    echo $i
done

# While Loop

echo "While loop"
Counter=0

while [ $Counter -lt 10 ];
do
    echo $Counter
    let Counter+=1
done

# Until loop
echo "Until Loop"
Counter=20

until [ $Counter -lt 10 ];
do
    echo $Counter
    let Counter-=1
done

# Chapter 8: Functions

function quit {
    # When the script terminates, type "$?" to get
    # exit status returned by the script.
    exit 12
}

function hello {
    echo hello
}

hello
#quit this will exit the program
echo "After quit"

function hello {
    first=$1
    last=$2
    echo "$first $last"
}

NAME="Mohit Sharma"
hello NAME

# Chapter 9: User Interfaces

#echo select
#OPTIONS="Hello Quit"
#select opt in $OPTIONS; do
#    if [ "$opt" = "Quit" ]; then
#    echo done
#    exit
#    elif [ "$opt" = "Hello" ]; then
#    echo Hello World
#    else
#    clear
#    echo bad option
#    fi
#done

#echo "This script can make any of the files in this directory private."
#echo "Enter the number of the file you want to protect:"
#
#select FILENAME in *;
#do
#     echo "You picked $FILENAME ($REPLY), it is now only accessible to you."
#     chmod go-rwx "$FILENAME"
#done
