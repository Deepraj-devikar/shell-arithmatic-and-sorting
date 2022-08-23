#!/bin/bash

echo -n "Enter a: "
read a
declare -i a=$a

echo -n "Enter b: "
read b
declare -i b=$b

echo -n "Enter c: "
read c
declare -i c=$c

result[0]=$(($a+$b*$c))

result[1]=$(($a*$b+$c))

result[2]=$(($c+$a/$b))

echo "${result[0]}"
echo "${result[1]}"
echo "${result[2]}"

