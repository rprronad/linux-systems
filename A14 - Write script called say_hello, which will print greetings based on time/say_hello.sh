#!/bin/bash
<< Doc
Name            : RAVIKUMAR
Date            : 27-10-2022
Description     : Script called say_hello, which will print greetings based on time.
Sample Input    : When we start shell (whenever you opening new tab or terminal)
Sample Output   : Good Morning RAVIKUMAR, Have a nice day!
                  This is Thu 27 in Oct of 2022 (11:15:50 AM)
Doc

######################################################################################################################################################################

Day=`date | cut -d " " -f1`                          #Day of field1 is stored in one variable "Day" (fields: Thu 27 Oct 11:15:50 ISI 2022 AM).
Date=`date | cut -d " " -f3`                         #Date of field3 is stored in one variable "Date".
Month=`date | cut -d " " -f2`                        #Month of field2 is stored in one variable "Month".
Year=`date | cut -d " " -f6`                         #Year of field6 is stored in one variable "Year".
Time=`date |cut -d " " -f4`                          #Time of field4 is stored in one variable "Time".
Session=`date +%p`                                   #For AM/PM is Stored in one variable "Session".
h=`date +%R | cut -d ":" -f1`                        #Present date is stored in "h" variable.i
if [ $h -ge 5 -a $h -lt 12 ]                         #if condition for 5AM to 12PM timing.
then                                                 #if statement syntax is follows.
    echo "Good morning RAVIKUMAR, Have a nice day!"  #Print the Greetings.
elif [ $h -ge 12 -a $h -le 13 ]                      #eliif condition for 12PM to 1PM.
then                                                 #if statement syntax is follows.
    echo "Good noon"                                 #Print the Greetings.
elif [ $h -ge 14 -a $h -lt 17 ]                      #elif condition for 2PM to 5PM.
then                                                 #if statement syntax is follows.
    echo "Good afternoon"                            #print the Greetings.
elif [ $h -ge 17 -a $h -lt 21 ]                      #elif condition for 5PM to 9PM.
then                                                 #if statement syntax is follows.
    echo "Good evening"                              #Print the Greetings.
elif [ $h -ge 21 -o $h -le 5 ]                       #elif condition for 9PM to 5AM (or Use two more condition for 21 to 24 is Good night and 00 to 5 is Good morning).
then                                                 #if statement syntax is follows.
    echo "Good night"                                #Print the Greetings.
fi                                                   #close the if statement.
echo "This is $Day $Date in $Month of $Year ($Time $Session)"     #Print the all the fields like Thu 27 Oct 2022 11:15:50 AM.

 #####################################################################################################################################################################