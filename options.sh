#!/bin/bash -
#===============================================================================
#
#          FILE: options.sh
#
#         USAGE: ./options.sh
#
#   DESCRIPTION: Learn how to use getopts
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 03:06:52 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

while getopts ":ibq?" argv
do
    case $argv in
        "i")   echo "Function for -i"
            ;;

        "b")   echo "Function for -b"
            ;;

        "q")   echo "Function for -q"
            ;;

        "?") echo "Function for help"
            ;;
            # If you need to test ? use \?
        *)   echo "An unexpected parsing error occurred."
             exit 2
            ;;
    esac
done

exit 0
