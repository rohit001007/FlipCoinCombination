#!/bin/bash

count=0
count1=0
count2=0

for (( i=1;i<11; i++))
do
	RANDOM=$$
	x1=$(( $RANDOM % 10 ))
	x2=$(( $x1 % 2 ))

	count=$(( $count + 1 ))

	if [ $x2 -eq 0 ]
	then
		count1=$(( $count1 + 1 ))
		percent1=$(( ($count1/$count) * 100 ))

	elif [ $x2 -eq 1 ]
	then
		count2=$(( $count2 + 1 ))
		percent2=$(( ($count2/$count) * 100 ))
	fi
done

ar[0]="HEAD : $percent1"
ar[1]="TAIL : $percent2"

echo -ne "\n * Array Result With Percentage *\n"
echo ${ar[@]}
