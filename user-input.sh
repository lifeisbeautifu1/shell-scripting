#! /bin/bash

echo "Enter your name:"

read name

echo "Your name is: ${name}"

# Reading on the same line as text

read -p "And you last name is: " last_name

echo "You last name is ${last_name}"

# You can use -a flag for arrays

echo "Enter your favourite fruit's (3 fruits): "

read -a fruits

echo "Your favourite fruits are: ${fruits[0]}, ${fruits[1]} and ${fruits[2]}"

# -s flag for password type input, 's' stands for silent

echo "Enter your password: "

read -s password

echo "Your entered password is ${password}"

# If you don't provide the variable name, input will be saved in global REPLY variable

read -p "Enter your favourite color: "

echo "Your favourite color is: ${REPLY}"
