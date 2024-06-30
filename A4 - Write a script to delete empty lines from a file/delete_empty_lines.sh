#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 20-10-2022
DESCRIPTION     : Script to delete empty lines from a file.
SAMPLE INPUTS   :./delete_empty_lines.sh file.txt

                 ./delete_empty_lines.sh

SAMPLE OUTPUTS  : Empty lines are deleted
                  Hello
                  How
                  are
                  you?

                  Error: Please pass the file name through command line.
Doc

#######################################################################################################################################################################

if [ $# -eq 1 ]                                                   #Start to Scripting and validatin condition and pass one file through CL if condition is true.
then                                                              #if statement syntax is follows.
    `sed -i '/^[[:space:]]*$/d' $1`                               #Using sed (Stream editor) removing the empty line or space or blanks permenantly in given file.
    echo "Empty lines are deleted"                                #Print the messeage, after sed deleting empty lines.
    cat $1                                                        #cat(concatenate) use to print the modified emptyfile.txt.
else                                                              #if statement syntax is follows.
    echo "Error: Please pass the file name through command line." #Print the messeage if validation condition if fails: Pass the filename through CL.
fi                                                                #closing the if statement.

#######################################################################################################################################################################