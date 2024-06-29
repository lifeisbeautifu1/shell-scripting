#! /bin/bash

# You can access passed arguments from the bash script using
# two following ways

# The first way by accessing numbered variables like so:

echo "Two passed arguments to this script are: $1 and $2"

# By default $0 contains filename

echo "Script filename is $0"

# The second way is to reference @ variable which is array of all
# passed arguments

args=("$@")

echo "Two passed arguments to this script are: ${args[0]} and ${args[1]}"

# The length of the passed arguments accessible with global `#` variable

echo "You have passed $# variables to this shell script"
