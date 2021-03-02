#!/bin/bash
# Script to show read command usage
echo "Example 1: using read with echo"
echo -n "Enter a number : "
read num 
echo "Entered number is : $num"
echo
echo "Example 2: read with out echo"
read -p "Printing from read enter a number: " r_num
echo "Entered number is $r_num"
echo 
echo "Example 3: read sensitive data"
read -s -p "Enter password : " r_Pass
echo "Entered password is $r_Pass"
