#!/bin/bash -
#===============================================================================
#
#          FILE: case.sh
#
#         USAGE: ./case.sh
#
#   DESCRIPTION: Test CASE statements
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:48:38 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo "Enter a value"
read answer

#Case statements use
#case <variable> in
# Testcond1)  ;;
# Testcond2)  ;;
# Testcond3)  ;;
#esac
case $answer in
    one)
        echo "Answer is one"
        ;;
    two)
        echo "Answer is two"
        ;;
    three)
        echo "Answer is three"
        ;;
    #Use wild card for else case
    *)
        echo "Answer [$answer] is not supported"
        ;;
esac

echo "Done"
exit 0
