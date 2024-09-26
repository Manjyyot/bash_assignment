#!/bin/bash
# Simple calculator script

# Function to perform the calculation
calculate() {
    case $2 in
        +) echo "$1 + $3 = $(($1 + $3))" ;;
        -) echo "$1 - $3 = $(($1 - $3))" ;;
        \*) echo "$1 * $3 = $(($1 * $3))" ;;
        /) 
            if [ "$3" -ne 0 ]; then
                echo "$1 / $3 = $(($1 / $3))"
            else
                echo "Error: Division by zero is not allowed!"
            fi
            ;;
        *) echo "Invalid operator! Please use +, -, *, or /." ;;
    esac
}

# Prompt user for input
read -p "Enter first number: " num1
read -p "Enter operator (+, -, *, /): " operator
read -p "Enter second number: " num2

# Perform calculation
calculate "$num1" "$operator" "$num2"
