#!/bin/bash

# design a virtual clock which will update each second
# use while loop, date, sleep

while [[ 0 ]]; do
    # -n do not print newline
    # -e escape
    echo -ne `date`"\r"
    sleep 1
done
