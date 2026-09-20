#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "----- Simple Interest Calculator -----"

read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time period (years): " time

# Calculate simple interest using bc for decimal support
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "---------------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period       : $time years"
echo "Simple Interest   : $simple_interest"
echo "---------------------------------------"
