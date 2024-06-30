#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 14-10-2022
DESCRIPTION     : Scripting for Arithmetic Calculator using command line arguments.
SAMPLE INPUTS   : 1. 25 + 41
                  2. 10 x 5
                  3. 25 / 5
                  4. 10.2 - 5.6
                  5. <space>
                  6. 3.4

SAMPLE OUTPUTS  : 1. 25 + 41 = 66
                  2. 10 x 5  = 50
                  3. 25 / 5  = 5.00
                  4. 10.2 - 5.6 = 4.6
                  5. Error : Please pass the arguments through command line
                     Usage:./arithmatic_calc.sh 2.3 + 6.7
                  6. Error : Please pass 3 arguments.
                     Usage:./arithmatic_calc.sh 2.3 + 6.7
Doc

#####################################################################################################################################################################

if [ $# -gt 0 ]                                                                 #Start of scripting and Checking the validation.
then                                                                            #If statement syntax is follows.
    if [ $# -eq 3 ]                                                             #This condition is comparing with number of arguments.
    then                                                                        #If statement syntax is follows.
        case $2 in                                                              #case condition and $2 is used for operator.
            +)                                                                  #1st Label: ADDITION.
                echo "$1 + $3 = `echo $1 + $3 | bc`"                            #Print the result of Addition.
                ;;                                                              #Break condition for 1st Label.
            x)                                                                  #2nd Label: MULTIPLICATION.
                echo "$1 x $3 = `echo $1 \* $3 | bc`"                           #Print the result of Multiplication..
                ;;                                                              #Break condition for 2nd Label.
            /)                                                                  #3rd Label: DIVISION.
                echo "$1 / $3 = `echo "scale=2; $1 / $3" | bc`"                 #Print the result of DIVISION.
                ;;                                                              #Break condition for 3rd Label.
            -)                                                                  #4th Label: SUBTRACTION.
                echo "$1 - $3 = `echo $1 - $3 | bc`"                            #Print the result of subtraction.
                ;;                                                              #Break condition for 4th Label.
            *)                                                                  #Default option in the case condition.
                echo "Invalid option"                                           #Print the messeage if not a giving proper operator operation.
                ;;                                                              #Break condition for Default condition in case.
        esac                                                                    #Closing case condtion after all execution is done
    else                                                                        #Inner If statement syntax is follows.
        echo "Error:Please pass 3 arguments."                                   #Print the messeage if not passing 3 arguments.
        echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"                             #Print the messeage for Usage.
    fi                                                                          #Closing inner If statement.
else                                                                            #Inner if statement syntax follows.
    echo "Error : Please pass the arguments through command line."              #Print the messeage if validation argument is failed.
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"                                 #Print the messeage for Usage.
fi                                                                              #Closing the outer if statement.

################################################################################################################################################################