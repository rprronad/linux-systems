#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 20-10-2022
DESCRIPTION     : For each directory in the $PATH, Display the number of executable files in that directory.
SAMPLE INPUTS   : ./executable_path.sh

SAMPLE OUTPUTS  : Current dir:/usr/local/sbin
                  current count: 0
                  Current dir:/usr/local/bin
                  current count: 0
                  Current dir:/usr/sbin
                  current count:205
                  Total: 205
Doc

######################################################################################################################################################################

arr=(`echo $PATH | tr ":" " "`)         #Start to Scripting and Confifuration file (PATH) are stored in an array.
count=0                                 #Initial variable count declared with 0 values.
total=0                                 #Another initial variable total declared with 0 values.
for i in ${arr[@]}                      #for loop for varifying the all array in sequence order.
do                                      #for loop syntax is follows.
    cd $i                               #change directory according to for loop.
    for j in $('ls')                    #for loop for excecution file
    do                                  #for loop syntax is follows.
        echo $j                         #print the files.
        if [ -x $j ]                    #if condition for checking the execution files or not.
        then                            #if statement syntx is follows.
            count=$((count+1))          #increment of count.
        fi                              #if statement syntax is follows.
        echo "Current Dir: $i"          #Print directory and number of executable files one-by-one.
        echo "current Count: $count"    #print the number of count.
        total=$((total+count))          #print total no of execution file in current dir.
        count=0                         #agaian making a count is zero for next loop execution.
    done                                #closing the inner for loop.
done                                    #closing the outer for loop.
echo "Total: $total"                    #Print the total number of executable files at last.

#######################################################################################################################################################################