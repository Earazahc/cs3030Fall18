#!/bin/bash -
#===============================================================================
#
#          FILE: testMany.sh
#
#         USAGE: ./testMany.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:31:39 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

#1) Take 1 input param
#2) If "YES" print something

if [[ $1 == "YES" ]]
then
    echo "I'm glad we agree."
#3) If "NO" print something else
elif [[ $1 == "NO" ]]
then
    echo "Thats too bad."
#4) If "MAYBE" print something different
elif [[ $1 == "MAYBE" ]]
then
    echo "I'm only asking if you like pie."
#5) Else print "I didn't catch that."
else
    echo "I didn't catch that."
fi

echo
echo "Goodbye"

exit 0
