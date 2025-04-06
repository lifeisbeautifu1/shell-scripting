#! /bin/bash

vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100 dollars" ;;
    "van" )
        echo "Rent of $vehicle is 80 dollars" ;;
    * )
        echo "Unknown vehicle type" ;;
esac
