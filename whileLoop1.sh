#!/bin/bash -
#===============================================================================
#
#          FILE: whileLoop1.sh
#
#         USAGE: ./whileLoop1.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 02:21:28 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

i=1
while [[ $i -lt 100 ]]
do
    echo "i is $i"
    # multiply i by 2
    i=`expr $i \* 2`
done

echo "i is now $i"

exit
