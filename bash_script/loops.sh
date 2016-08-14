#!/bin/bash

total=100
count=1

while (( count <= total )); do
    if (( count%2 == 0 )); then
        echo "$count is multiply of 2"
    elif (( count%3 == 0)); then
        echo "$count is multiply of 3"
    elif (( count%5 == 0)); then
        echo "$count is multiply of 5"
    else
        echo "$count is not multiply of 2,3,5"
    fi
    count=$(( count+1 ))
done
