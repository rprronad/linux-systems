#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 19-10-2022
DESCRIPTION     : Album name and corresponding directory, this script renames the jpg files with new name passed through command line
SAMPLE INPUTS   : ls

                  ./album.sh day_out

                  ./album.sh

SAMPLE OUTPUTS  : DSN001.jpg DSN002.jpg DSN003.jpg DSN004.jpg DSN005.jpg

                  All .jpg files in current directory is renamed as
                  day_out001.jpg day_out002.jpg day_out003.jpg day_out004.jpg day_out005.jpg
                  Error : Please pass the prefix name through command line.
Doc

####################################################################################################################################################################

if [ $# -eq 1 ]                                                         #Start to scripting and Validation checking.
then                                                                    #if statement syntx is follows.
    for i in  *.jpg                                                     #for loop for all jpg file renaming in the sequence.
    do                                                                  #for loop syntax is follows.
        num=`echo $i | tr -d [:alpha:]`                                 #used transfer command to delete the alphabet in jpg file.
        mv $i $1${num}jpg                                               #move the given name to jpg file so its renamed.
    done                                                                #for loop syntax is follows and closing the for loop.
    echo "All .jpg files in current directory is renamed as"            #Print the messeage.
    echo *.jpg                                                          #Print the renamed jpg files in sequence order.
else                                                                    #if statemet syntax is follows and if above is false.
    echo "Error : Please pass the prefix name through command line."    #Print the error messeage to Pass prefix name for jpg.
fi                                                                      #closing the if statement.

#####################################################################################################################################################################