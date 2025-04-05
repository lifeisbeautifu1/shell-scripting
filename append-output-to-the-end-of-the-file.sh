#! /bin/bash

echo -e "Enter the name of the file: \c"
read file_name

if [ -f $file_name ]
then
    if [ -w $file_name ]
    then
        echo "Type some text data. To quit press CTRLD+D."
        # > clears and appends
        # >> just appends
        cat >> $file_name
    else
        echo "$file_name doesn't have writing permission"
    fi
else
    echo "$file_name doesn't exist"
fi
