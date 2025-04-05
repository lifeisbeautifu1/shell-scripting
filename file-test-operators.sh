#! /bin/bash

echo -e "Enter the name of the file: \c"
read file_name

# check if file exist
# d for directory
# f for file
# e for exists
# b for blob special files
# c for charater special files
# s for checking if file empty
# r for checking read permission on file
# w for checking write permission on file
# x for checking execution permission on file
if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi
