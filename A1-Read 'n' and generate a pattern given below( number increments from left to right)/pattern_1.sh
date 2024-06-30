#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 14-10-2022
DESCRIPTION     : Reading 'n' and generate a given pattern below (number increments from Left to Right)
SAMPLE INPUTS   : 4

SAMPLE OUTPUTS  : 1
                  1 2
                  1 2 3
                  1 2 3 4
Doc

########################################################################################################################################################

read -p "Enter the number:" n   #Start scripting and Reading n number and "-p" used for Marging the "echo" and "read" command in single line.
for i in `seq $n`               #i is the ROW line sequence.
do                              #For loop syntax follows.
    for j in `seq $i`           #j is the COLUMN line looping sequence with ROW line.
    do                          #For loop syntax follows.
        echo -n "$j "           #Printing the values in the column wise order as follows the above SAMPLE OUTPUTS pattern and "-n" used for no newline.
    done                        #Closeing the COLUMN inner For loop 1.
    echo                        #Printing space for entering the number in the next line purpose.
done                            #Closing the ROW outer For loop 2.

#########################################################################################################################################################