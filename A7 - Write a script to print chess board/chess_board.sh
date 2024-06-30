#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 15-10-2022
DESCRIPTION     : Printing the CHESS BOARD
SAMPLE INPUTS   : 8
SAMPLE OUTPUTS  : 64 Box - White and Black CHESS BOARD
Doc


########################################################################################################################################################################

for i in `seq 8`                        #8 ROW line sequence.
do                                      #For loop syntax follows.
    for j in `seq 8`                    #8 COLUMN Line sequence.
    do                                  #For loop syntax follows.
        if [ $((((i+j))%2)) -eq 0 ]     #Adding the ROW's and COLUMN's and Checking logic with if condition.
        then                            #If condition syntax follows.
            echo -e -n "\e[47m" " "     #If condition is True for equal to "0" comparision then it will print the white Colored Box instead of 0's and "-e" is enable the character.
        else                            #Another option to go and If condition follows.
            echo -e -n "\e[40m" " "     #If condition is False for not equal to "0" comparision then it will print the black colored BOX instead of 1's and "-e" is enable the characte.
        fi                              #Closing the if statement.
    done                                #Closing inner for loop 1.
    echo -e "\e[0m"                     #For avoiding over coloring sequences in the alternative line so that used the "\e[0m"and "-e" is enable characters.
done                                    #Closing Outer for loop 2.

########################################################################################################################################################################