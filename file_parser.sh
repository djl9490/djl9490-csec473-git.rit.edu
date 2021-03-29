#!/bin/bash

#
# Daniel Lennon - djl9490@rit.edu
# Red Team Tool for Competition 2
# Team Charlie - No repository link yet
# Script gives four options of how it can parse through a directory
#

echo "Starting File Parser"
echo ""
echo "----------------------------MENU---------------------------"
echo "R = Remove all files and directories in current directory"
echo "V = View all files and directories in current directory"
echo "F = Only remove files in current directory"
echo "H = Hide all files and directories in current directory"

echo ""
echo "Command: "
read command

if [[ "$command" == "R"]]
then
    for FILE in *; do rm -r -f $FILE; done;
fi

if [[ "$command" == "V"]]
then
    for FILE in *; do echo $FILE; done;
fi

if [[ "$command" == "F"]]
then
    for FILE in *; do rm $FILE; done;
fi

if [[ "$command" == "H"]]
then
    for FILE in *; do mv "$FILE" ".$FILE"; done;
fi
