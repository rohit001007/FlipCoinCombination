#!/bin/bash

count=0
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
RANDOM=$$

for (( i=1;i<19; i++))
do
	count=$(( $count + 1 ))
	RANDOM=$(( $RANDOM + $count ))
	x1=$(( $RANDOM % 8 ))

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

	 elif [ $x1 -eq 4 ]
        then
                count5=$(( $count5 + 1 ))
                percent5=$(( ($count5/$count) * 100 ))

	 elif [ $x1 -eq 5 ]
        then
                count6=$(( $count6 + 1 ))
                percent6=$(( ($count6/$count) * 100 ))

	 elif [ $x1 -eq 6 ]
        then
                count7=$(( $count7 + 1 ))
                percent7=$(( ($count7/$count) * 100 ))

	 elif [ $x1 -eq 7 ]
        then
                count8=$(( $count8 + 1 ))
                percent8=$(( ($count8/$count) * 100 ))

	fi
done

ar[0]="HHH : $percent1"
ar[1]="HHT : $percent2"
ar[2]="HTH : $percent3"
ar[3]="HTT : $percent4"
ar[4]="THH : $percent5"
ar[5]="THT : $percent6"
ar[6]="TTH : $percent7"
ar[7]="TTT : $percent8"
echo -ne "\n * Array Result With Percentage *\n"
echo ${ar[@]}
