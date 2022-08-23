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

declare -A result

result["a+b*c"]=$(($a+$b*$c))
result["a*b+c"]=$(($a*$b+$c))
result["c+a/b"]=$(($c+$a/$b))
result["a%b+c"]=$(($a%$b+$c))

i=0
for compute in ${!result[@]}
do
	echo "$compute result is ${result[$compute]}"
	resultList[$i]=${result[$compute]}
	i=$i+1
done
