#! /bin/bash

#! /bin/bash

age=25

if [ $age -eq 18 ] || [ $age -eq 30 ]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi

if [ $age -eq 18 -o $age -eq 30 ]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi

if [[ $age -eq 18 || $age -eq 30 ]]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi

if [[ $age == 18 || $age == 30 ]]
then
    echo "Valid age"
else
    echo "Age is not valid"
fi
