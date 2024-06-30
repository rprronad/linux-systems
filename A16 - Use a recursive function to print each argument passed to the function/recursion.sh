#!/bin/bash
<< Doc
Name            : RAVIKUMAR
Date            : 27-10-2022
Description     : Use a recursive to print each argument passed to the function.
Sample Input    : ./recursion.sh How are you? I am fine
Sample Output   : How
                  are
                  you?
                  I
                  am
                  fine
Doc

#####################################################################################################################################################################

if [ $# -gt 0 ]                                                 #check the validation condition.
then                                                            #if statement syntax is follows
    function recursion()                                        #Declaration of function name.
    {                                                           #open the brackets.
        arr=($@)                                                #Store all passing arguments in an array "arr=($@)".
        if [ $# -gt 0 ]                                         #Validation for next passing argument one by one.
        then                                                    #inner if statement syntax is follows.
            echo $1                                             #print the first argument message
            arr=(${arr[@]:1})                                   #for displaying  next argument using offset method.
        else                                                    #inner if statement syntax is follows.
            return                                              #after completion of first argument and then return to start function.
        fi                                                      #inner if statement syntax is follows.
        recursion ${arr[@]}                                     #function call.
    }                                                           #closing brackets for funtion.
recursion $@                                                    #start the function.
    else                                                        #if statement syntax is follows.
        echo "Error : Pass the arguments through command line." #if passing arguments are not valid then display this message.
fi                                                              #closing the if statement and validation as well.

#####################################################################################################################################################################