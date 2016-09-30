#!/bin/bash
set -e

# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"
#COL_MAGENTA=$ESC_SEQ"35;01m"
#COL_CYAN=$ESC_SEQ"36;01m"


## Functions we use
# Error

function error_exit {
	echo -en "$COL_RED$1$COL_RESET" 1>&2
	exit 1
}

####
# Vars
YEAR=$(date +"%Y")


# Start running checks, like do we have already d conf.py in docs and so on
echo -en "$COL_YELLOW Running checks ...$COL_RESET\n"

# If we have no .jekyll we will create one
echo -en "$COL_YELLOW Do we have a .jekyll already? ...$COL_RESET\n"
if [ -f "docs/.jekyll" ]; then
	echo -en "$COL_YELLOW Found one moving on ...$COL_RESET\n"
	: # do nothing and move on
else
	echo -en "$COL_YELLOW Creating .jekyll ...$COL_RESET\n"
	touch docs/.jekyll
fi

# Check if we have already a index.rst if not create one
echo -en "$COL_YELLOW Checking for a index.rst ...$COL_RESET\n"
if [ -f "docs/index.rst" ]; then
	echo -en "$COL_YELLOW Found index, moving on ...$COL_RESET\n"
	: # Do nothing
else
	echo -en "$COL_YELLOW Creating example index ...$COL_RESET\n"
	cp templates/index.ini docs/index.rst
fi

# Check if we already have a _static dir, if not create
echo -en "$COL_YELLOW Checking for _static ...$COL_RESET\n"
if [ -f "docs/_static" ]; then
	echo -en "$COL_YELLOW Found _static moving on ...$COL_RESET\n"
	: # Do nothing
else
	echo -en "$COL_YELLOW Creating _static ...$COL_RESET\n"
	mkdir -p docs/_static
fi

# Check if we have already a conf.py, if yes, soft exit
if [ -f docs/conf.py ]; then
    	echo -en "$COL_RED You have already a config file !$COL_RESET\n"
		exit 0
else
		echo -en "$COL_YELLOW Copy example configuration ...$COL_RESET\n"
		cp templates/conf.py.ini docs/conf.py
fi

echo
echo -en "$COL_BLUE Done ! \n
 Please adjust settings like ExampleProjectName and ExampleAuthor \n
 in the config under /docs/config.py$COL_RESET \n"

exit 0
