#!/bin/bash
set -e

# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"
COL_CYAN=$ESC_SEQ"36;01m"


## Functions we use
# Error

function error_exit {
	echo -en "$COL_RED"$1"$COL_RESET" 1>&2
	exit 1
}

#####
ask() {
    # http://djm.me/ask
    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$prompt] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        read REPLY </dev/tty

        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi

        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac

    done
}
# Default to No if the user presses enter without giving an answer:
#if ask "Do you want to do such-and-such?" N; then
#    echo "Yes"
#else
#    echo "No"
#fi


####
#project=$project_name
#: ${project:="createc"}
#author="sven"
YEAR=$(date +"%Y")
#version="1.0"

# Use "-d" to skip questions and just use the defaults
while getopts ":d" opt; do
    case "$opt" in
	d)
	    echo -en "$COL_BLUE Using default settings$COL_RESET"
	    exit 0
	;;
    esac
done


# Start the questions
echo -en "$COL_YELLOW Running checks ...$COL_RESET"

# Check if we have already a config, file, if so tell
if [ -f conf.py ]; then
    	if ask "Do you want to override?" N; then
		rm conf.py
		#error_exit "Detected conf.py !  Aborting."
	else
		error_exit "Detected conf.py !  Aborting."
		#rm conf.py
	fi
    #echo -en "$COL_RED We have already a config file$COL_RESET"
    #exit 1
else
    echo -en "$COL_YELLOW Looking good, lets continue$COL_RESET"
fi

echo -en "$COL_GREEN Name of the project:$COL_RESET"
read project_name
project=$project_name
: ${project:="createc"}

echo -en "$COL_GREEN Name of the author:$COL_RESET"
read project_author
author=$project_author
: ${author:="sven"}

#echo -en "$COL_GREEN Year of creation:$COL_RESET"
#read creation_year
#year=$creation_year
#: ${year:="2016"}

echo -en "$COL_GREEN This is version:$COL_RESET"
read project_version
version=$project_version
: ${version:="1.0"}

cp conf.py.ini conf.py
sed -i "s/template.project_name/$project/g" conf.py
sed -i "s/template.author/$author/g" conf.py
sed -i "s/template.year/$YEAR/g" conf.py
sed -i "s/template.version/$version/g" conf.py

