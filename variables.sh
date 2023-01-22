#!/bin/bash
<< comment
Shell variables are created once they are assigned a value. 
A variable can contain a number, a character or a string of
characters.
Variable examples:

1. Price_per_apple = 5
2. MyFirstLetters = ABC

\ is used for escaping characters.
ex: Go down for the price of the apple example 
Encapsulating the varible name with ${} is used to avoid ambiguity
Encapsulating the string variable with "" will preserve any white space
Make sure you don't have space between your assignments of the statements, 
it will throw a command not found error.
comment

PRICE_PER_APPLE=5
echo "The price of an Apple today is: ${PRICE_PER_APPLE}"

MyFirstLetters=ABC
echo "The first 10 letters of the alphabets are ${MyFirstLetters}DEFGHIJ"

greeting='Hello,            World!'
greeting1='Hello,            World!'
echo  ${greeting}" ${greeting1} "

<< Comment 
The code file
Comment

#!/bin/bash
# Change this code
BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY="Saturday"


# Testing code - do not change it

if [ "$BIRTHDATE" == "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Saturday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi