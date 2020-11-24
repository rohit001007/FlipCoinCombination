#!/bin/bash

count=0
count1=0
count2=0
count3=0
count4=0
RANDOM=$$

for (( i=1;i<19; i++))
do
	count=$(( $count + 1 ))
	RANDOM=$(( $RANDOM + $count ))
	x1=$(( $RANDOM % 4 ))

	if [ $x1 -eq 0 ]
	then
		count1=$(( $count1 + 1 ))
		percent1=$(( ($count1/$count) * 100 ))

	elif [ $x1 -eq 1 ]
	then
		count2=$(( $count2 + 1 ))
		percent2=$(( ($count2/$count) * 100 ))

	elif [ $x1 -eq 2 ]
        then
                count3=$(( $count3 + 1 ))
                percent3=$(( ($count3/$count) * 100 ))

	 elif [ $x1 -eq 3 ]
        then
                count4=$(( $count4 + 1 ))
                percent4=$(( ($count4/$count) * 100 ))


	fi
done

ar[0]="HH : $percent1"
ar[1]="HT : $percent2"
ar[2]="TH : $percent3"
ar[3]="TT : $percent4"

echo -ne "\n * Array Result With Percentage *\n"
echo ${ar[@]}
