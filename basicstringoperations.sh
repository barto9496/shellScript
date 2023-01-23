#!/bin/bash
<<Comment
The shell allows some common string operatinos which can be very useful for script writing.

String Length
STRING="THIS IS A STRING"
echo "${#STRING}"

Index 
Find the numerical position in $STRING of any single character in $SUBSTRING that matches. Note that the 
'expr' command is used inthis case 

Substring extraction
Extract substring of length $LEN from $STRING starting after position $POS. Note that first position is 0.

Simple data extraction example:Please find below

Substring replacement: Please find below:
Comment

# String length
STRING="This is a string"
echo "${#STRING}"

# Index
SUBSTRING="wall"
expr index "$STRING" "$SUBSTRING"

# Substring Extraction, If $:LEN is omitted, extract substring from $POS to the end of the line
POS=1
LEN=3
echo ${STRING:POS:LEN}
POS=12
echo ${STRING:POS}

#Code to extract the First Name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ","`
CHOPFIELD=${DATARECORD:$COMMA1}
COMMA2=`expr index "$CHOPFIELD" ","`
LENGTH=`expr $COMMA2-6-1`
echo LENGTH
FIRSTNAME=${CHOPFIELD:6:$LENGTH}
echo $FIRSTNAME

#Substring Replacement
STRING="to be or not to be"

#Replace first occurrence of substring with replacement 
echo ${STRING[@]/be/eat}

#Replace all the occurrences of substring with the replacement string
echo ${STRING[@]//be/eat}

#Delete all the occurence of a substring within a string(Replace with empty string). CHECK THE POSITION OF THE "NOT" HERE.
echo ${STRING[@]// not/}

#Replace occurrence of substring if at the beginning of $STRING
echo ${STRING[@]/#to be/eat now}

#Replace occurence of a substring if at the end of $STRING
echo ${STRING[@]/%be/eat}

#Replace occurrence of substring with shell command output
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}

# CODE Question 
# In this exercise, you will need to change Warren Buffett's known saying. 
# First create a variable ISAY and assign it the original saying value. Then 
# re-assign it with a new changed value using the string operations and 
# following the 4 defined changes: 
# Change1: replace the first occurrence of 'snow' with 'foot'.
# Change2: delete the second occurrence of 'snow'. 
# Change3: replace 'finding' with 'getting'. 
# Change4: delete all characters following 'wet'. Tip: One way to implement Change4, 
# if to find the index of 'w' in the word 'wet' and then use substring extraction.

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=$BUFFETT
ISAY=${BUFFETT[@]/snow/foot}
ISAY=${ISAY[@]/ snow/}
ISAY=${ISAY[@]/finding/getting}
w_pos=`expr index "$ISAY" "w"`
LEN=`expr $w_pos + 2`
ISAY=${ISAY:0:LEN}
