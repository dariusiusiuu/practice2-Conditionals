#!/bin/bash

read -p "Enter an integer: " number

if [[ $number -lt 0 ]]; then
    echo "The number $number is negative"
else
    echo "The number $number is not negative"
fi
