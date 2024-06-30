#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 15-10-2022
DESCRIPTION     : Pass some names or strings through command-line and Print all the string's lenth one-by-one and Number of arguments may vary
SAMPLE INPUTS   : 1 23 456 789 
SAMPLE OUTPUTS  : Length of string (1) - 1
                  Length of string (23) - 2
                  Length of string (456) - 3
                  Length of string (789) - 3
Doc

################################################################################################################################################################

str=($@)                                                            #Start of scripting and Initilization of some array.
if [ $# -gt 0 ]                                                     #First checking validation condition before going to passing the arguments.
then                                                                #If statement syntax is follows.
    for i in ${str[@]}                                              #For loop for checking string_length of each string in sequence oder.
    do                                                              #For loop syntax is follows.
        echo "Length of string ($i) - ${#i}"                        #Print the string_length of strings until looping sequce is over.
    done                                                            #Closing the for loop after complition of execution and syntax is follows.
else                                                                #Outer if statement syntax is follows.
    echo "Error : Please pass the arguments through command-line."  #Print the messeage if number of arguments are empty with if condition is fails.
fi                                                                  #End of code and If statement syntax is follows.

#################################################################################################################################################################