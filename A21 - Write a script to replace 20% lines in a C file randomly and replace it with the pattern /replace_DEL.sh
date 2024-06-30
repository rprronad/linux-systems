#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 21-10-2022
DESCRIPTION     : Script to replace 20% lines in a C file randomly and replace it with the pattern.
SAMPLE INPUTS   : ./A21_replace_DEL.sh main.c

SAMPLE OUTPUTS  : Before replacing
                  #include <stdio.h>
                  int main()
                  {
                        printf("hello world\n");
                        printf("hello world\n");
                        printf("How are you\n");
                        printf("Hi\n");
                        printf("Hello\n");
                        printf("Hi\n");
                  }
                  After replacing
                  #include <stdio.h>
                  int main()
                  {
                  <--------Deleted------------>
                        printf("hello world\n");
                        printf("How are you\n");
                        printf("Hi\n");
                        printf("Hello\n");
                  <--------Deleted------------>
                  }

Doc

######################################################################################################################################################################

lines=0                                                                 #Declaration of some variavlbe are zero, lines=0,
percentage=0                                                            #Initial value Percentage=0,
result=0                                                                #initial value result=0.
if [ $# -gt 0 ]                                                         #Check the validation.
then                                                                    #if statement syntax is follows.
    if [ -f $1 ]                                                        #file operator condition for file is exist or not.
    then                                                                #if statement syntax is follows.
        if [ -s $1 ]                                                    #file operator condition for content of file is empty or not.
        then                                                            #if statement syntax is follows.
            lines=(`cat $1 | wc -l`)                                    #counting the no of lines in .c file using wc command.
            if [ $lines -gt 5 ]                                         #if condition for comparing the sufficient lines in the .c file.
            then                                                        #if statement syntax is follows.
                echo "Before replacing"                                 #print the message for Befor replacing the lines.
                cat $1                                                  #Display the lines of .c file
                percentage=$((lines/5))                                 #calculate the 20% of lines to print.
                for i in `seq $percentage`                              #for loop for variying the 20% lines in sequence order.
                do                                                      #for loop syntax is follows.
                    random=`shuf -i 1-$lines -n1`                       #provide random lines in given range by using shuf command line and random is a variable.
                    sed -i "$random s/.*/<-------Deleted------->/" $1   #using sed command replacing the given txt into .c file with permanently.
                done                                                    #for foor loop.
                echo "After replacing"                                  #print the message for After replcaing the lines.
                cat $1                                                  #Display the lines of .c file
            else                                                        #if statement syntax is follows.
                echo "Not enough lines in the main.c"                   #print the message if not sufficient lines are not present.
            fi                                                          #closing the if statement.
        else                                                            #if syntax is follows.
            echo "Error : main2.c is empty file.So can't replace the string." #Print the message for if .c file operator not containing any lines.
        fi                                                              #closing the if statement.
    else                                                                #if statement syntax is folloes.
        echo "No such a file."                                          #print the message for .c file is exist or not.
    fi                                                                  #closing the if statement.
else                                                                    #if statement syntax is follows.
    echo "Error : Please pass the file name through command line."      #peint the message if not passing proper arguments.
fi                                                                      #closing the if statement.

#####################################################################################################################################################################