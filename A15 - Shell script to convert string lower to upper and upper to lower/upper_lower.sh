#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 20-10-2022
DESCRIPTION     : Script to convert string lower to upper and upper to lower
SAMPLE INPUTS   : ./upper_lower.sh file.txt
                 1-Lower to upper
                 2-Upper to lower
                 Please select option : 1

                 ./upper_lower.sh file.txt
                 1-Lower to upper
                 2-upper to Lower
                 Please select option : 2

SAMPLE OUTPUTS  :WHAT IS OS?
                 WHAT ARE THE DIFFERENT OS?

                 what is os?
                 what are the different os?
Doc

######################################################################################################################################################################
if [ $# -gt 0 ]                                                     #Start to scripting and validation checking condition.
then                                                                #if statement syntax is follows.
    if [ -f $1 ]                                                    #file operator conditon: file is exited or not.
    then                                                            #if statement syntax is follows.
        if [ -s $1 ]                                                #file opeartor condition: file is empty or not.
        then                                                        #if statement syntx is follows.
            echo -e "1 – Lower to upper"                            #Print messeage: for lower to upper
            echo -e "2 – Upper to lower"                            #Print messeage: for upper to lower.
            read -p "Please select option :" choice                 #read the choice 1 or 2 from user.
            case $choice in                                         #case operator for choicing execution.
                1)                                                  #label 1 for lower to upper case conversion.
                    echo -e "`cat $1 | tr a-z A-Z`\n"               #changing the charaters from lower case to upper case using tr command.
                    ;;                                              #Break condition for 1st Label.
                2)                                                  #label 2 for upper to lower case conversion.
                    echo -e "`cat $1 | tr A-Z a-z`\n"               #changing the charaters from upper case to lower case using tr command.
                    ;;                                              #Break condition for 2nd Label.
                *)                                                  #default label.
                    echo "Error: Invalid choice.!"                  #Print the messeage for invalid option.
                    ;;                                              #Break condition for default label.
            esac                                                    #Closing the case condition.
        else                                                        #if statement syntax is follows.
            echo "Error: No contents inside the file."              #Print the messeage if file doesn't contains the contents.
        fi                                                          #closing inner if statement.
    else                                                            #if statement syntax is follows.
        echo "Error: file doesn't exist"                            #Print the messeage if file is not present.
    fi                                                              #closing the 2nd inner if statement.
else                                                                #if statement syntax is follows.
    echo "Error : Please pass the file name through command line."  #Print the messeage, if validation is fails then pass the filename through CL.
fi                                                                  #closing outer if statement.
######################################################################################################################################################################