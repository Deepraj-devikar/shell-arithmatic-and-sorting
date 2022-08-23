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

result=$(($a+$b*$c))

echo "$result"
