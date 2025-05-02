#!/bin/bash

read -p "Enter operation (add, subtract, multiply, divide): " operation
read -p "Enter first integer: " num1
read -p "Enter second integer: " num2


if [ -z $operation ] || [ -z $num1 ] || [ -z $num2 ]; then
    echo "Error: You must provide an operation and two integer numbers."

elif [[ ! $num1 =~ [0-9] ]] || [[ ! $num2 =~ [0-9] ]]; then
    echo "Error: One or both numbers are not valid integers"

elif [ $operation != "add" ] && [ $operation != "subtract" ] && [ $operation != "multiply" ] && [ $operation != "divide" ]; then
    echo "Error: The operation must be 'add', 'subtract', 'multiply' or 'divide'."

elif [ $operation = "divide" ] && [ "$num2" -eq 0 ]; then
    echo "Error: Division by zero is not allowed."

else
    if [ $operation = "add" ]; then
        result=$((num1 + num2))
        echo "Result: $result"

    elif [ $operation = "subtract" ]; then
        result=$((num1 - num2))
        echo "Result: $result"

    elif [ $operation = "multiply" ]; then
        result=$((num1 * num2))
        echo "Result: $result"

    elif [ $operation = "divide" ]; then
        result=$((num1 / num2))
        echo "Result: $result"
    fi
fi
