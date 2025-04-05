#! /bin/bash

flag=true

if [ flag ]
then
    echo "Flag is truthy"
fi

# Integer comparison

count=10

if [ $count -eq 10 ]
then
    echo "count variable is equal to 10"
fi

if (( $count == 10 )) 
then
    echo "count variable is equal to 10"
fi

if [ $count -ne 9 ]
then
    echo "count variable is not equal to 9"
fi

if (( $count != 9 )) 
then
    echo "count variable is not equal to 9"
fi

if [ $count -gt 9 ]
then
    echo "count variable is greater than 9"
fi

if (( $count > 9 ))
then
    echo "count variable is greater than 9"
fi

if [ $count -ge 10 ]
then
    echo "count variable is greater than or equal 10"
fi

if (( $count >= 10 ))
then
    echo "count variable is greater than or equal 10"
fi

if [ $count -lt 11 ]
then
    echo "count variable is less than 11"
fi

if (( $count < 11 ))
then
    echo "count variable is less than 11"
fi

if [ $count -le 11 ]
then
    echo "count variable is less than or equal 11"
fi

if (( $count <= 11 ))
then
    echo "count variable is less than or equal 11"
fi

# String comparison

str="Bob"
str2="Bob"
str3="John"
str4=""

if [ $str == $str2 ]
then
    echo "str and str2 variables are equal"
fi

if [ $str != $str3 ]
then
    echo "str and str3 variables are not equal"
fi


if [ $str4 -z ]
then
    echo "str4 variable is empty"
fi
