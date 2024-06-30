#!/bin/bash
<< Doc
Name            : RAVIKUMAR
Date            : 28-10-2022
Description     : To determine whether a given file system or mount point is mounted.
Sample Input    : ./mounted_fs.sh /dev/sdc
                  ./mounted_fs.sh /dev
                  ./mounted_fs.sh

Sample Output   : File-system /dev/sdc is / / and it is having 1% used space with 1510216 free
                  /dev is not mounted.
                  Error : Please pass the name of the file-system through command line.
Doc

#####################################################################################################################################################################

if [ $# -gt 0 ]                                                         #Start to script and check the validation condition.
then                                                                    #If statement syntax is follows.
    fs=(`df | cut -d " " -f1`)                                          #file-system is stored in an array fs
    mount=(`df | tr -s " "  | cut -d " " -f6`)                          #mount field is stored in an array mount
    use=(`df | tr -s " " | cut -d " " -f5`)                             #use field is stored in an array use
    used=(`df | tr -s " " | cut -d " " -f3`)                            #used field is stored in an array used.
    avail=(`df | tr -s " " | cut -d " " -f4`)                           #available field is stored in an array avail.
    count=0                                                             #Declared one variable count=0
        for i in `seq 1 $((${#fs[@]}-1))`                               #for loop verifying all file system in sequence.
        do                                                              #for loop syntax is follows.
            if [ $1 == ${fs[i]} ]                                       #compare passing argument is equal to stored array
            then                                                        #if statement syntax is follows.
                echo "File-system $1 is ${mount[i]} /and it is having ${use[i]} used space with ${used[i]} free" #Print the file system information.
            else                                                        #if statement syntax is follows.
                count=$(($count+1))                                     #Increment of count value.
            fi                                                          #closing the if statement.
            if [ $count == $((${#fs[@]}-1)) ]                           #count value is equal to array lenght -1, its true then conti..
            then                                                        #if statement syntax is follows.
                echo "$1 is not mounted."                               #if passing argumment is not matched then print this message.
            fi                                                          #closing the if statement.
        done                                                            #close for loop
    else                                                                #if statement syntax is follows.
        echo "Error : Please pass the name of the file-system through command line." #Print the message if not passed valid file-system through CL.
fi                                                                      #close the outer if statement condition.
#######################################################################################################################################################################