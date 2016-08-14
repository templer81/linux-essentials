#!/bin/bash

# calculate the price of a house
# width*length*pricePerUnit

# command line usage:
# ./housingPriceCalculator 10 5 3
#           0              1  2 3
# 150

# if width or length is smaller or equal than 0
# give an error message

usage(){
    # give some instructions for users here
    echo
    echo "This script helps you to calculate price of house."
    echo "Usage:"
    echo "  $0 width length pricePerUnit"
    echo
}

if [[ $3 == "" ]]; then
    echo "not enough parameters provided"
    usage
    exit 2 # not enough parameters
fi

if (( $1 > 0 && $2 > 0 )); then
    echo "price=" $(( $1*$2*$3 ))
else
    echo "width or length cannot be negative or zero"
    exit 1 # illegal parameters
fi
