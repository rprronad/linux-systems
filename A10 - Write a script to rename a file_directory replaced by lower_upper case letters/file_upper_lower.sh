#!/bin/bash
<<Doc
NAME            : RAVIKUMAR
DATE            : 20-10-2022
DESCRIPTION     : Script to remove a file/directory replaced by lower/Upper case letters.
SAMPLE INPUTS   : ls

                  ./file_upper_lower.sh

                  ls

SAMPLE OUTPUTS  : File.txt MyScript.SH MyFile007.txt dir/Assign1/newfolder

                  Files are rename in lowercase and directories are renamed in upper case
                 
                  file.txt myfile007.txt myscript.sh DIR/ASSIGN1/NEWFOLDER
Doc
####################################################################################################################################################################

arr=('ls')                          #Start to scripting and Store all the content of directory in one array.
for i in `${arr[@]}`                #Using a for loop taking directory content one by one.
do                                  #for loop syntax is follows.
    if [ -f $i ]                    #Using file test operator checking the file or directory.
    then                            #if statement syntax is follows.
        utl=`echo $i | tr A-Z a-z`  #content of directory, all files are renamed by upper to lowercase.
        mv $i $utl                  #moving the renamed files into variable "var".
    elif [ -d $i ]                  #using elif conition to checking thr directory or file.
    then                            #elif syntax is follows.
        ltu=`echo $i | tr a-z A-Z`  #content of directory, all dir's are renamedby lower to uppercase.
        mv $i $ltu                  #moving the renamed dir's into variable "var1".
    fi                              #closing the if statement.
done                                #closing for loop.
echo "Files are rename in lowercase and directories are renamed in upper case" #Ptint the messeage.
#####################################################################################################################################################################