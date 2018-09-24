#!/bin/bash -
#===============================================================================
#
#          FILE: bkFiles.sh
#
#         USAGE: ./bkFiles.sh
#
#   DESCRIPTION: Backup files
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 01:51:51 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Get all files with .txt ext.
tot=`wc -l *.txt*`
for file in `ls *.txt*`
do
    bk=`ls $file | cut -d '.' -f 3`
    # IF names have .bk do not rename
    if [[ $bk == "bk" ]]
    then
        echo "Moving $file to data/${file}"
        mv $file data/${file}
    else
        #Else rename
        # Save them
        echo "Moving $file to data/${file}.bk"
        mv $file data/${file}.bk
    fi
done

echo "$tot files moved to data folder"

exit 0
