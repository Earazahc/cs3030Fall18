#!/bin/bash -
#===============================================================================
#
#          FILE: testFiles.sh
#
#         USAGE: ./testFiles.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/17/2018 02:54:42 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

folder="data"
# Test if folder exists
if [[ ! -d $folder ]]
then
    echo "Creating folder"
fi
echo "Moving files to folder"


folder="data2"
# Test if folder exists
if [[ ! -d $folder ]]
then
    echo "Creating folder"
fi
echo "Moving files to folder"


folder="dups.csv"
# Test if folder exists
if [[ ! -d $folder ]]
then
    echo "Creating folder"
fi
echo "Moving files to folder"


exit 0
