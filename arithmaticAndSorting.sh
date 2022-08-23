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

# Sorting in Ascending Order
for (( i=0; i<3; i++ ))
do
	min_idx=$i
	iPlus1=$(($i+1))
	for (( j=$iPlus1; j<4; j++ ))
	do
		if [ ${resultList[j]} -lt ${resultList[$min_idx]} ]
		then
			min_idx=$j
		fi
	done
	if [ $i -ne $min_idx ]
	then
		temp=${resultList[$i]}
		resultList[$i]=${resultList[$min_idx]}
		resultList[$min_idx]=$temp
	fi
done

echo "Sorting in Ascending Order is ${resultList[@]}"
