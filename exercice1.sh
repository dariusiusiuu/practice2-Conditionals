#!/bin/bash

read -p "Enter an integer: " number

if [[ $number -gt 0 ]]; then
    echo "The number $number is positive"
elif [[ $number -lt 0 ]]; then
    echo "The number $number is negative"
else
    echo "The number is zero"
fi
