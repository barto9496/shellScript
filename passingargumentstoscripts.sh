#!/bin/bash
<< Comment
Arguments can be passed to the script when it is executed, by 
writing them as a space-delimited list following the script 
file name.
Comment

<< Comment
Inside the script, the $1 variable refers to the first argument
in the command line and $2 the second argument and so forth. The 
variable $0 references to the current script. In the following 
examplethe script name is followed by 6 arguments"

Executing the script on terminal as,
bash my_shopping.sh apple 5 banana 8 "Fruit Basket" 15
Comment

echo "File name is" $0
echo $3
Data=$5
echo "A $Date costs just $6."
echo $#

<< Comment
Tutorial code 
Comment

function File {
    # think you are inside the file
    # Change here
    echo $#
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi