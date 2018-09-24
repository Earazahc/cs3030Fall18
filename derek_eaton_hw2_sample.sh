#!/bin/bash -
#===============================================================================
#
#          FILE: derek_eaton_hw2_sample.sh
#
#         USAGE: ./derek_eaton_hw2_sample.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Derek Eaton (deaton), derekeaton@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/24/2018 01:48:53 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

user="hvalle"
server="icarus.cs.weber.edu"
serverFolder="/home/hvalle/submit/cs3030/files"

# Global Variables
have_f=0
have_c=0

#
# NO MORE HARDCODED VALUES
#



# Usage function
UsageFunction()
{
    echo "Usage : $0 [-c customerDataFolder] [-f dataFile]"
    echo "Both arguments are required"
    # Always exit your help function with non zero
    exit 1
}

# Check if help called
if [[ $1 == "--help" ]]
then
    UsageFunction
fi

# Check for correct number of arguments
if [[ $# -ne 4 ]]
then
    UsageFunction
fi


# if here, the correct number of params has been given
# verify they are the correct ones
# Set getopts

while getopts ":f:c:" opt
do
    case $opt in
        f)
            custFile=$OPTARG
            have_f=1
            # echo "f option"
            ;;
        c)
            custFolder=$OPTARG
            Have_c=1
            # echo "c option"
            ;;
        ?)
            UsageFunction
            ;;
        *)
            echo "Unsupported option"
            UsageFunction
            ;;
    esac
done

# check for correct number of arguments
if [[ $have_f && $have_c ]]
then
    echo "have required info"
else
    UsageFunction
fi


# make sure both getopts are used
if [[ ! "$custFile" -eq 1 || ! "$custFolder" -eq 1 ]]
then 
    UsageFunction
fi



# check for proper folder structure
# if it doesn't exist, create it
# check for month folder in fredData
echo "Checking for data structure"
curMonth=`date +%m`
custDirectory="$custFolder/$curMonth"


if [[ ! -d $custDirectory ]]
then
    echo " Customer folder $custDirectory is missing"
    echo "Creating folder"
    # Create customer folder and subfolder with -p option
    `mkdir -p $custDirectory`
fi


# Retrieve file and put it in proper folder via scp
# this requires ssh keys to be set between servers
# filename should be appended with timestamp (yyy-mm-dd)
timestamp=`date +%Y-%m-%d`

`scp $user@$server:$serverFolder/$custFile $HOME/$custDirectory/${custFile}.$timestamp`
echo "File transfer complete"

echo "File located at $HOME/$custDirectory/${custFile}.$timestamp"

exit 0
