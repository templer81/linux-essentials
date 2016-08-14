#!/bin/bash

a=5
b=10
x=6

echo "use round brackets"
if (( $a < $x && $x < $b )); then
    echo "x=$x is between a=$a and b=$b"
else
    echo "x=$x is not between a=$a and b=$b"
fi

echo "use square brackets"
if [[ $a < $x && $x < $b ]]; then
    echo "x=$x is between a=$a and b=$b"
else
    echo "x=$x is not between a=$a and b=$b"
fi

# [[...]] will recognize variables as string
# [[ $a < $x && $x < $b ]] is equivalent to [[ "5" < "6" && "6" < "10" ]]

# (()) will recognize variables as number

daytime=morning
fruit=peach

if [[ $daytime == "morning" && ( $fruit == "apple" || $fruit == "banana" ) ]]; then
    echo "fruit is my favorite"
else
    echo "fruit is not my favorite"
fi

echo "test short circuit and"
head -n1 andor.sh && echo "1: echo reached" # will output "echo reached"
head -n1 notexistfile && echo "2: echo reached" # will not output "echo reached"

echo "test short circuit or"
head -n1 andor.sh || echo "1: echo reached" # will not output "echo reached"
head -n1 notexistfile || echo "2: echo reached" # will output "echo reached"

echo "combine and or"
(( $a < $x && $x < $b )) && echo "true" || echo "false"
