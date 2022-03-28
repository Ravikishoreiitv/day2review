#!/bin/bash
declare -a Numvalues
Numvalues=(50 25 56 75 38)
echo ${Numvalues[@]}
echo ${#Numvalues[@]}
for((i=0;i<5;i++))
do
	for((j=0;j<5-i-1;j++))
	do
		if[ ${Numvalues[j]} > ${Numvalues[$((j+1))]} ]
		then
				temp=${Numvalues[j]}
				Numvalues[$j]=${Numvalues[$((j+1))]}
            Numvalues[$((j+1))]=$temp
      fi
   done
done
echo ${Numvalues[@]}

