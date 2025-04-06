#! /bin/bash

for i in 1 2 3 4 5
do
    echo $i
done

# create range
for i in {1..10}
do
    echo $i
done

# create range with custom increment
for i in {1..10..2}
do
    echo $i
done

# create range with custom increment
for i in {10..0..-1}
do
    echo $i
done

for (( i=0; i<=5; i++ ))
do
    echo $i
done
