#!/bin/bash -
#===============================================================================
#
#          FILE: var.sh
#
#         USAGE: ./var.sh
#
#   DESCRIPTION: Learn how to use variables in bash
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 08/29/2018 02:24:32 PM
#      REVISION:  ---
#===============================================================================

# VIM: Delete line command is: dd

# No spaces after the var name and = sign
Name="Waldo Weber State"

echo "Hi Name"
# Use $ to call variables
echo "Hi $Name"

# Take user input
# echo -n : do not insert new line
echo -n "What is your favorite team: "
# read <VAR> take user input
read Team
echo "Nice, your [$Team] is the best"

# Positional parameters
# $# Total number of input parameters
# $@ List of input parameters
# $1 first input, $2 second input, etc
echo "You entered [$#] params to program [$0]"
echo "List of params [$@]"
echo "First is [$1]"
First=$1
echo "First is also [$First]"
echo "Second is [$2]"
echo "Third is [$3]"

exit 0
