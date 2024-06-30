#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 14-10-2022
DESCRIPTION     : Reading n and generate a given pattern (number increasing from Top to Bottom)
SAMPLE INPUTS   : 4

SAMPLE OUTPUTS  : 1
                  2  3
                  4  5  6
                  7  8  9  10
Doc

########################################################################################################################################################

read -p "Enter the number: " n          #Reading n number and -p is used for marging the "echo" and "read" command in single line.
next=0                                  #Declaring one variable "next" for increment, after one loop sequence is completed.
for i in `seq $n`                       #i is the ROW For loop.
do                                      #For loop syntax follows.
    for j in `seq $i`                   #j is the COLUMN for loop.
    do                                  #For loop syntax follows.
        next=$(($next+1))               #Increment is doing after one loop sequence is completed.
        echo -n "$next "                #Printing the pattern iterations as follows above the sample OUTPUTS and -n is no newline purpose.
    done                                #Closing the inner for loop 1.
    echo                                #Printing the spacgge for entering the number in the next line purpose.
done                                    #Closing the outer for loop 2.

#########################################################################################################################################################