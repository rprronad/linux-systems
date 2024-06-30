#!/bin/bash:
<<Doc
NAME            : RAVIKUMAR
DATE            : 16-10-2022
DESCRIPTION     : Script to sort a given number in ascending or descending order.
SAMPLE INPUTS   : -a 5 4 6 2 3 8 9 7 1

                  -d 5 4 6 2 3 8 9 7 1

                  :/sorting.sh 5 4 6 2 3 8 9 7 1

                  :/sorting.sh

                  :/sorting.sh -d 5 4 6 2 -3 8 -9 7 1

SAMPLE OUTPUTS  :  Ascending order of array is 1 2 3 4 5 6 7 8 9

                   Descending order of array is 9 8 7 6 5 4 3 2 1

                   Error : Please pass the choice.
                   Usage :/.sorting -a/-d 4 23 5 6 3

                   Error : Please pass the argument through command line.
                   Usage :/. sorting -a/-d 4 23 5 6 3

                   Descending order of array is 8 7 6 5 4 2 1-3 -9
Doc

###################################################################################################################################################################

arr=($@)                                                          #Start of the script and Array initialization.
    next=1                                                        #One simple variable is Declared.
    if [ $# -gt 0 ]                                               #Validation condtion checking.
    then                                                          #If statement syntax is follows.
        case $1 in                                                #Case condition for choice of Ascending order and Descending order.
            -a)                                                   #Ascending order option.
                for i in `seq $((${#arr[@]} - 2))`                #for loop for bubble sorting and array length - 2 times.
                do                                                #for loop syntax is follows.
                    for j in `seq $((${#arr[@]} - $i - 1))`       #for loop next stage of iteration of bubble sort execution and array length - i -1.
                    do                                            #for loop syntax is follows.
                        if [ ${arr[$j]} -gt ${arr[$((j+1))]} ]    #if first number is greater than second number then condition is true.
                        then                                      #if statement syntax is follows.
                            next=${arr[$j]}                       #first variable value is assign to one simple variable ie next.(swaping the numbers)
                            arr[$j]=${arr[$((j+1))]}              #second variable is assign to first variable..
                            arr[$((j+1))]=$next                   #one simple variable value is assign to second variable
                        fi                                        #end of inner if statement.
                    done                                          #closing the inner for loop.
                done                                              #closing the outer for loop.
                echo "Ascending order of array is ${arr[@]:1}"    #Print the Ascending order of array and array start with $2 position using offset method.
                ;;                                                #Break condition for 1st case option ie -a (Ascending order of array).
            -d)                                                   #Descending order option.
                for i in `seq $((${#arr[@]}-2))`                  #for loop for bubble sorting and array length - 2 times.
                do                                                #for loop syntax is follows.
                    for j in `seq $((${#arr[@]}-$i-1))`           #for loop next stage of iteration of bubble sort execution and array length - i -1.
                    do                                            #for loop syntax is follows.
                        if [ ${arr[$j]} -lt $((${arr[$((j+1))]})) ]   #if first number is less than second number then condtion is true.
                        then                                      #if statement syntax is follows.
                            next=${arr[$j]}                       #first variable value is assign to next variable. (Swaping the numbers)
                            arr[$j]=${arr[$((j+1))]}              #second variable value is assign to first variable.
                            arr[$((j+1))]=$next                   #next variable value is again assign to second variable
                        fi                                        #if statement syntax is follows.
                    done                                          #closing the inner for loop.
                done                                              #closing the outer for loop.
                echo "Descending order of array is ${arr[@]:1}"   #Print the Descending order of arder and array start with $2 position using offset method.
                ;;                                                #Break condition for 2nd case option ie -d (Descending order of array).
            *)                                                    #Default case option.
                echo "Error : Please pass the choice."            #Print the error if not selecting the proper option.
                echo "Usage : ./sorting -a/-d 4 23 5 6 3"         #To give proper option, Print the Usage
                ;;                                                #Break condition for Default case option.
        esac                                                      #Closing the case condition.
    else                                                          #if condition is false using else.
        echo "Error : Please pass the argument through command line." #Print the error if validation is condition is false.
        echo "Usage : ./sorting -a/-d 4 23 5 6 3"                 #Print the Usage for rectifing inputs.
    fi                                                            #Closing outermost if statement and end of the scripting.

#######################################################################################################################################################################