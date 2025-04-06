#! /bin/bash

# Integer arithmetic operations

echo $(( 2 + 2 ))
echo $(( 2 + 2 - 1 ))

num=5
num2=3
num3=$(( num + num2 ))

echo $num3

num4=$( expr $num + $num2 )
echo $num4

# Floating point arithmetic operations

num5=20.5
num6=3.3

echo "20.5+5.3" | bc
echo "$num5+$num6" | bc


