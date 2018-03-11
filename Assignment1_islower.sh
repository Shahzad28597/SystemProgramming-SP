#!/bin/bash
is_lower()
{
echo "The Function Converts All Upper Case Characters into Lower Case Characters. Numeric Digits are printed as it is if any..!"
read -p "Enter a string including uppercase Characters : " string
string=${string,,}
echo $string
}
is_lower
	
