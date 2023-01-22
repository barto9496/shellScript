#!/bin/bash
<<Comment
An array can hold several values under one name. Array naming is the 
same as variables naming. An array is initialized by assigning
space-delimited values enclosed in a pair of paranthesis

Array members need not be consecutive or contiguous. Some members of the array can be left uninitialized
The total number of elements in the array is referenced by
The array elements can be accessed with their numeric index. The index of the first element is 0.
Exercise: You will need to add numbers and strings to the correct arrays. You must add 1,2 and 3 to the
"numbers" array, and the works "hello" and 'world: to strings array.
Comment

my_array=(apple banana "Fruit Basket" orange)
echo ${#my_array[@]}

my_array[4]="carrot"
echo ${#my_array[@]}
echo ${my_array[${#my_array[@]}-1]}

NAMES=( John Eric Jessica )
# Write your code here
NUMBERS=(1 2 3)
STRINGS=(hello world)
NumberOfNames=0
second_name=${NAMES[1]}

echo ${NUMBERS[*]}
echo ${STRINGS[*]}
echo "The number of names listed in the NAMES array: ${#NAMES[@]}" 
echo "The second name on the NAMES list is: $second_name"