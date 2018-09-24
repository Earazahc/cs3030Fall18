#!/bin/bash -
#===============================================================================
#
#          FILE: homework1.sh
#
#         USAGE: ./homework1.sh
#
#   DESCRIPTION: This will take user input, test it with conditionals,
#                and call functions.
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 01:20:50 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

verifyUser()
{
    #This function will test what type of user
    case $UID in
        0)
            echo "You are the root. Welcome." ;;
        *)
            echo "You are not the root. Goodbye."
            exit 0 ;;
    esac
   echo
}


main()
{
    #This function will drive the rest of the program
    if [[ $1 == "--help" ]]
    then
        echo "Usage $0 <-w> <param1>"
    fi
    verifyUser
}


input=$1
toPrint=$2
main $input $toPrint

exit 0
