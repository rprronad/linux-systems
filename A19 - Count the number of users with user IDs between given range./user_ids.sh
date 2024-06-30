#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 20-10-2022
DESCRIPTION     : Count the number of users with user IDs between given range.
SAMPLE INPUTS   : ./user_id.sh

                  ./user_id.sh 0 100

                  ./user_id.sh 100

                  ./user_id.sh 200 100

SAMPLE OUTPUTS  : Total count of user ID between 500 to 10000 is: 1

                  Total count of user ID between 0 to 100 is: 0

                  Error : Please pass 2 arguments through CL.
                  Usage :./user_id.sh 100 200

                  Error : Invalid range. Please enter the valid range through CL.
Doc

#####################################################################################################################################################################

arr=(`cat /etc/passwd | cut -d ":" -f3`)                                           #Start to scripting and Store all user id in an array.
    count=0                                                                        #initial count value is zero.
    if [ $# -eq 0 ]                                                                #Checking number of argument passed or not its true then conti..
    then                                                                           #if statement syntax is follows.
        for i in ${arr[@]}                                                         #taking one by one id and varifying.
        do                                                                         #for loop syntax is follows.
            if [ $i -ge 500 -a $i -le 10000 ]                                      #checking the user id in the range of 500 to 10000.
            then                                                                   #if statement syntax is follows.
                count=$((count+1))                                                 #increment of count after one step loop exectution.
            fi                                                                     #closing the if statement.
        done                                                                       #closing for loop
        echo "Total count of user ID between 500 to 10000 is: $count"              #print the user id number within the range of 500 to 10000.
    elif [ $# -eq 2 ]                                                              #checking two arguments passed or not.
    then                                                                           #if statement syntax is follows.
        if [ $1 -lt $2 ]                                                           #if 1st argument is less than 2nd argument its true condition to conti..
        then                                                                       #if statement is follows.
            for i in ${arr[@]}                                                     #taking one by one and varifying the array for user id count.
            do                                                                     #for loop syntax is follows.
                if [ $i -ge $1 -a $i -le $2 ]                                      #comparing given range with loop sequence.
                then                                                               #if statement syntax is follows.
                    count=$((count+1))                                             #increment of count after one step completion of loop.
                fi                                                                 #closing if statement.
            done                                                                   #closing the for loop.
            echo "Total count of user ID between 0 to 100 is : $count"             #print the user id count for given range.
        else                                                                       #if statement syntax is follows.
            echo "Error : Invalid range. Please enter the valid range through CL." #print the messeage if not passing valid range.
        fi                                                                         #closing the if statement.
    else                                                                           #if statemet syntax is follows.
        echo "Error : Please pass 2 arguments through CL."                         #Print the messeage if not passing 2 arguments.
        echo "Usage : ./user_ids.sh 100 200"                                       #Print usage messeage.
    fi                                                                             #closing the if statement.

#######################################################################################################################################################################