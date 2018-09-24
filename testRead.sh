#!/bin/bash -
#===============================================================================
#
#          FILE: testRead.sh
#
#         USAGE: ./testRead.sh
#
#   DESCRIPTION: Test if we can open and display the content of a file
#                to the screen
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 01:59:51 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

#1) Test you have 1 and only 1 input param, exit 1 otherwise

if [[ $# -ne "1" ]]
then
    echo "Invalid number of input parameters. Need 1, given $#"
    echo "Usage: $0 <inputFile>"
    exit 1
fi

#2) Cat the input param, exit 2 otherwise

cat "$1"

# Test exit code $?

if [[ $? -ne 0 ]]
then
    echo "Error: Reading $1 failed"
    exit 2
fi

echo "Done!"

exit 0
