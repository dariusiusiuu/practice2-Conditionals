#!/bin/bash

read -p "Enter an integer: " number

if ((number >= 0)); then
    echo "The number $number is positive"
else
    echo "The number $number is negative"
fi
