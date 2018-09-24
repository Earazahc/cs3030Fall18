#!/bin/bash -
#===============================================================================
#
#          FILE: readFile.sh
#
#         USAGE: ./readFile.sh
#
#   DESCRIPTION: Read information from file. Parse records based on
#               delimiter
#
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/24/2018 02:27:13 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# IFS will set the record seperator
# Read command will read parsed fields
# in this case: user pass userId, ,,,, are local variables
while IFS=: read user pass userId groupId xxx home shell
do
    echo $user

done < /etc/passwd
