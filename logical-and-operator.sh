#! /bin/bash

age=25

if [ $age -gt 18 ] && [ $age -lt 30 ]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi

if [ $age -gt 18 -a $age -lt 30 ]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi

if [[ $age -gt 18 && $age -lt 30 ]]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi

if [[ $age > 18 && $age < 30 ]]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi
