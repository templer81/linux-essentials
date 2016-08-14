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
