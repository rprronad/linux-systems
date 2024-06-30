#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 19-10-2022
DESCRIPTION     : Display the longest and shortest user-names on the system.
SAMPLE INPUTS   :./largest_username.sh

SAMPLE OUTPUTS  :The Longest Name is: systemd-timesync
                 The Shortest Name is:lp
Doc

##########################################################################################################################################

arr=( `cat /etc/passwd | cut -d : -f1` )  #Start of Scripting and Configuration files are stored in a array.
small=${arr[0]}                           #Fetch the first name from the first field in etc/passwd file.
large=${arr[0]}                           #Fetch the first name from the first field in etc/passwd file.
for i in ${arr[@]}                        #for loop for verifying the all field using array.
do                                        #for loop syntax is follows.
    if [ ${#i} -gt ${#large} ]            #comparing the under index name if condition is true, conti..
    then                                  #if statement syntax is follows.
        large=$i                          #after comparing name stored in large variable.
    fi                                    #closing the if statement.
    if [ ${#i} -lt ${#small} ]            #comparing the under index name if condition is true, conti..
    then                                  #if statement syntax is follows.
        small=$i                          #after comparing name stored in small variable.
    fi                                    #closing the is statement.
done                                      #closing for loop.
echo "The Longest Name is: $large"        #Print Longest Name is in configuration file.
echo "The Shortest Name is: $small"       #Print Shortest Name is in the configuration file.

###########################################################################################################################################