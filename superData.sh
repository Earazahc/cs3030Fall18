#!/bin/bash -
#===============================================================================
#
#          FILE: superData.sh
#
#         USAGE: ./superData.sh
#
#   DESCRIPTION: Create a sequence of 10 files with
#                unique data information inside them
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 02:47:14 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Ask user how many files they need
echo -ne "How many files do you need: "
read amount

# Loop to produce files
for num in `seq $amount`
do
    # Create unique file names: waldoData#-%d-%m-%Y-%H-%M-%s.txt
    # Use ${VAR} to call var name
    fName="waldo${num}_`date +%d-%m-%Y-%H-%M-%S`.txt"
    echo "Working on $fName..."

    # Populate files with "unique data"
    echo "$num information" > $fName
    #sleep for 2 seconds
    sleep 2
done

echo "Done making $amount files"

exit 0
