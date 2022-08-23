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

echo "Result in list ${resultList[@]}"

# Sorting in Descending Order
for (( i=0; i<3; i++ ))
do
	max_idx=$i
	iPlus1=$(($i+1))
	for (( j=$iPlus1; j<4; j++ ))
	do
		if [ ${resultList[j]} -gt ${resultList[$max_idx]} ]
		then
			max_idx=$j
		fi
	done
	if [ $i -ne $max_idx ]
	then
		temp=${resultList[$i]}
		resultList[$i]=${resultList[$max_idx]}
		resultList[$max_idx]=$temp
	fi
done

echo "Sorting in Descending Order is ${resultList[@]}"
