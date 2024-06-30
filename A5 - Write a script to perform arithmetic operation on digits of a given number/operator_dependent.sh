#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 18-10-2022
DESCRIPTION     : Script to perform arithmetic operation on digits of a given number.
SAMPLE INPUTS   : ./operator_dependent.sh 2536+

                  ./operator_dependent.sh 8432-

                  ./operator_dependent.sh 2438x

                  ./operator_dependent.sh 4587

                  ./operator_dependent.sh 12/

                  ./operator_dependent.sh

SAMPLE OUTPUTS  : Sum of digits = 16

                  Subtraction of digits = -1

                  Error: Operator missing or invalid operator,
                  please pass operator as last digit (+,-,x,/)

                  Multiplication of digits = 192

                  Division of digits = .50

                  Error : Please pass the arguments through CL.
                  Usage :./operator_dependent.sh 2345+
Doc

######################################################################################################################################################################

if [ $# -gt 0 ]                                 #Start to Script and Validation cheking.
then                                            #If statement syntax is follows.
    sum=0                                       #Declaring sum,sub,mul & div variables for storing the result and initial value is zero is assigned.
    sub=0
    mul=0
    div=0
    num=($@)                                    #Declaration of array.
    opr=${num: -1}                              #Assigning the last operator to opr variable.
    case $opr in                                #Case condition for airthmatic operation ( +, -, x, /).
        +)                                      #Addition option.
            sum=${num:0:1}                      #First digit is assigned to Sum using offset method.
            for i in `seq $((${#num} - 2))`     #taking a length of array -2 for ith sequence.
            do                                  #for loop syntax is follows.
                sum=$(($sum+${num:$i:1}))       #addtion using offset method.
            done                                #Closing for loop.
            echo "Sum of digits = $sum"         #Print the result
            ;;                                  #Break condition for 1st case option.
        -)                                      #Subtraction option.
            sub=${num:0:1}                      #First digit is assigned to sub using offset method.
            for i in `seq $((${#num} - 2))`     #taking a length of array -2 for ith sequence.
            do                                  #for loop syntax is follows.
                sub=$(($sub-${num:$i:1}))       #subtraction using offset method.
            done                                #closing for loop.
            echo "Subtraction of digits = $sub" #Print the result.
            ;;                                  #Break condition for 2nd case option.
        x)                                      #Multiplication option..
            mul=${num:0:1}                      #First digit is assigned to mul using offset method.
            for i in `seq $((${#num} - 2))`     #taking a length of array -2 for ith sequence.
            do                                  #for loop syntax is follows.
                mul=$(($mul*${num:$i:1}))       #multiplication using offset method.
            done                                #closing for loop.
            echo "Multiplication of digits = $mul" #Print the result.
            ;;                                  #Break condition for 3rd case option.
        /)                                      #Division option.
            div=${num:0:1}                      #First digit is assigned to div using offset method.
            for i in `seq $((${#num} - 2))`     #taking a length of array -2 for ith sequence.
            do                                  #for loop syntax is follows.
                div=`echo "scale=2;$div / ${num:$i:1}" |bc` #Division using offset method, scaling of 2 digit piping with basic calculation (bc).
            done                                #closing the for loop.
            echo "Division of digits = $div"             #Print the result.
            ;;                                  #Break condition for 4th case option.
        *)                                      #default option.
            echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"  #Print messeage if not giving proper operator.
            ;;                                  #Break condition for default option.
    esac                                        #closing case condition.
else                                            #if validation false.
    echo "Error : Please pass the arguments through CL." #Print the error messeage Please pass the arguments through CL.
    echo "Usage : ./operator_dependent.sh 2345+" #prinf the messeage through CL.
fi                                               #if statement syntax is follows.

#######################################################################################################################################################################