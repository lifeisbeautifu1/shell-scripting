#! /bin/bash

os=("ubuntu" "windows" "macOS")

echo "${os[0]} ${os[1]} ${os[2]}"
echo "${os[@]}"
echo "${#os[@]}"
echo "${!os[@]}"

os[3]="raspberry"

echo "${os[@]}"

unset os[2]

echo "${os[@]}"
