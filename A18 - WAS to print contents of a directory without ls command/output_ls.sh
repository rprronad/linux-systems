#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 17-10-2022
DESCRIPTION     : Print contents of a directory without ls command.
SAMPLE INPUTS   : ./output_ls.sh

                  ./output_ls.sh ~ ~/ECEP

                  ./output_ls.sh Test

SAMPLE OUTPUTS  : Assignments Classwork

                  /home/user: Downloads Documents Desktop Music Picture Public Videos ECEP
                  /home/user/ECEP: Linux_System Advnc_C Linux_Internals Data_Structures MC

                  ./output_ls.sh: Cannot acess Test : No such a file or directory.
Doc

#####################################################################################################################################################################

if [ $# -gt 0 ]                                                                         #Start to script and Checking validation of condition.
then                                                                                    #if statement condition is follows.
    for i in $@                                                                         #for loop for available directory sequence
    do                                                                                  #for loop syntax is follows.
        cd $i                                                                           #for change directory (cd) according to the for loop sequence.
        if [ $? -eq 0 ]                                                                 #if condition for checking the present working directory true or false if true .
        then                                                                            #if statement syntax is follows.
            echo $i                                                                     #print the name of directory (cd).
            echo *                                                                      #Print the content of directory without using ls command.
        else                                                                            #if statement syntax is follows.
            echo "./output_ls.sh: Cannot access Test : No such a file or directory."    #print messeage,if directory is not availabe.
        fi                                                                              #if statement syntax is follows and closing the if condition.
    done                                                                                #closing the inner for loop condition.
    echo *                                                                              #print messeage, Available file or Directory.
fi                                                                                      #closing the outer for loop condition.

#####################################################################################################################################################################