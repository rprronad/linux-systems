#!/bin/bash
<< Doc
Name            : RAVIKUMAR
Date            : 26-10-2022
Description     : Script to print system information using commands.
Sample Input    : ./system_info.sh
                  1. Currently logged users.
                  2. Your shell directory.
                  3. Home directory.
                  4. OS name & version.
                  5. Current  working directory.
                  6. Number of user logged in.
                  7. Show all available shells in your system.
                  8. Hard disk information.
                  9. CPU information.
                  10. Memory informations.
                  11. File system information.
                  Enter the number: 1

Sample Output   : 1. Currently logged users. ravikumar
                  Do you want to continue (y/n)? y
Doc
#######################################################################################################################################################################
var=y                                                                          #Declaration of one variable.
while [ $var == y ]                                                            #Repeat operation for while condition.
do                                                                             #while systax is follows.
    echo "1. Currently logged users."                                          #print the list of information.
    echo "2. Your shell directory."
    echo "3. Home directory."
    echo "4. OS name & version."
    echo "5. Current  working directory."
    echo "6. Number of user logged in."
    echo "7. Show all available shells in your system."
    echo "8. Hard disk information."
    echo "9. CPU information."
    echo "10. Memory informations."
    echo "11. File system information."
    echo "12. Currently running process."

    read -p "Enter the number:" number                                          #Read the number for case operation.
    case $number in                                                             #case condition
        1)                                                                      #1st option
            echo "Currently logged users" `whoami`                              #Gives current user's name.
            ;;                                                                  #Break condition for 1st option.
        2)                                                                      #2nd option
            echo "Your shell directory" $SHELL                                  #Gives location of current user's shell program.
            ;;                                                                  #Break condition for 2nd option.
        3)                                                                      #3rd option.
            echo "Home directory" $HOME                                         #Gives path of the home direcoty.
            ;;                                                                  #Break condition for 3rd option.
        4)                                                                      #4th option.
            echo "OS name & version" `uname -a`                                 #Gives OS name & version using using OS and version.
            ;;                                                                  #Break condition for 4th option.
        5)                                                                      #5th option.
            echo "Current working directory in" $PWD                            #Gives the path of present working directory.
            ;;                                                                  #Break condition for 5th option.
        6)                                                                      #6th option.
            echo "Number of user logged in" `who -q`                            #Gives the number of user logged in the system.
            ;;                                                                  #Break condition for 6th option.
        7)                                                                      #7th option.
            echo "Show all available shells in your system" `cat /etc/shells`   #Gives all available shells in the system.
            ;;                                                                  #Break condition for 7th option.
        8)                                                                      #8th option.
            echo -r "Hard disk information" `lsblk`                     #Gives the Hard disk information. or use for each disk information "lsblk -a"  or "hwinfor"
            ;;                                                                  #Break condition for 8th option.
        9)                                                                      #9th option.
            echo "CPU information." `lscpu`                                     #Gives the CPU information of system.
            ;;                                                                  #Break condition for 9th option.
        10)                                                                     #10th option.
            echo "Memory informations." `cat /proc/meminfo`                     #Gives the Memory information of system.
            ;;                                                                  #Break condition for 10th option.
        11)                                                                     #11th option.
            echo "File system information." `df -a`                             #Gives file sytem information of system.
            ;;                                                                  #Break condition for 11th option.
        12)                                                                     #12th option.
            echo "Currently running process."`ps`                               #Gives information about currently running process status.
            ;;                                                                  #Break condition for 12th option.
        *)                                                                      #Defalut option.
            echo "Invalid option, please enter valid option"                    #If not passing valid option in case condition it will show Invalid option.
            ;;                                                                  #Break condition for Default.
    esac                                                                        #close case condition.
    read -p "Do you want to continue(y/n)?" var                                 #For repeat process read the variable.
done                                                                            #close the while condtion.