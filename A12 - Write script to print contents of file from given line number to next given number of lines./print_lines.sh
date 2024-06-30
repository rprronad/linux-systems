#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 19-10-2022
DESCRIPTION     : Script tp print contents of file from given line number to next number of lines.
SAMPLE INPUTS   : 6 3 myfile.txt

                  myfile.txt

                  5 10 myfile.txt

SAMPLE OUTPUTS  : line number 4
                  line number 5
                  line number 6

                  Error:arguments missing!

                  Error:data.txt is having only 10 lines file should have at atleast 14 lines
Doc
########################################################################################################################3############################################

if [ $# -eq 3 ]                                                                 #Start of Scripting and Passing 3 Arguments.
then                                                                            #If statement syntax is follows.
    sum=`cat $3 | wc -l`                                                        #Total number line in filename assign to sum avariable.
    var=$(($1+$2-1))                                                            #Head and Tail line number sub by - 1 assign to var variable.
    if [ $var -le $sum ]                                                        #if head and tail lines are less then the Total line in the file.txt comparing.
    then                                                                        #if syntax is follows.
        echo "`head -$var $3 | tail -$2`"                                       #if condition is true, Print the number of lines according to the passing arguments.
    else                                                                        #if statement syntax is follows.
        echo "Error: data.txt is having only 10 lines. file should have atleast 14 lines" #if condition is false, Print the messeage.
    fi                                                                          #if statement syntax is follows.
else                                                                            #outer if condition is false then,
    echo "Error: arguments missing!"                                            #Print the messeage: missing arguments.
    echo "Usage: ./file_filter.sh start_line upto_line filename"                #Print Usage for helping.
    echo "For eg. ./file_filter.sh 5 5 <file>"                                  #Print the example to use for passing arguments.
fi                                                                              #outer if statement syntax is follows.

#####################################################################################################################################################################