#!/bin/bash

#arr="one two three four"
#for x in $arr;
#do
#    echo $x
#done
#
#for x in "one two three four";
#do
#    echo $x
#done
#
#
#
#arr="one two three four"
#for x in "$arr";
#do
#    echo $x
#done
#
#arr="one two three four"
#echo $arr
#new_arr=($arr)
#echo ${arr[0]}

arr[0]=1
arr[1]=""
echo ${arr[0]}
echo ${arr[1]}
echo ${arr[*]}

if [ ${arr[1]} = "" ];
then
    echo "arr[1] is empty"
fi

if [ -v ${arr[1]} ];
then
    echo "arr[1] is not set"
fi


#!/bin/bash
#  str-test.sh: Testing null strings and unquoted strings,
#+ but not strings and sealing wax, not to mention cabbages and kings . . .

# Using   if [ ... ]

# If a string has not been initialized, it has no defined value.
# This state is called "null" (not the same as zero!).

if [ -n $string1 ]    # string1 has not been declared or initialized.
then
  echo "String \"string1\" is not null."
else  
  echo "String \"string1\" is null."
fi                    # Wrong result.
# Shows $string1 as not null, although it was not initialized.

# Let's try it again.

if [ -n "$string1" ]  # This time, $string1 is quoted.
then
  echo "String \"string1\" is not null."
else  
  echo "String \"string1\" is null."
fi                    # Quote strings within test brackets

string1="a = b"

if [ $string1 ]       # Again, $string1 stands unquoted.
then
  echo "String \"string1\" is not null."
else  
  echo "String \"string1\" is null."
fi                    # Not quoting "$string1" now gives wrong result!



