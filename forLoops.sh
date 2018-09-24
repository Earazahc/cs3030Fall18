#!/bin/bash -
#===============================================================================
#
#          FILE: forLoops.sh
#
#         USAGE: ./forLoops.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 02:20:19 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

for team in Yankees Dodgers RedSoxs
do
    echo "I really like $team"
done

# Define array
teams="Yankees Dodgers Redsoxs"
for team in $teams
do
    echo "I really like $team yeah"
done

# Task Ask user to enter favorite teams: space seperated
# then, display one by one

display()
{
    # Number of params $#
    # String of all params $*
    for team in $*
    do
        echo "I really like $team too"
    done
}

echo -ne  "Please enter your favorite teams seperated by spaces: "

read favs

display $favs

echo "Wow your teams are great"
exit 0
