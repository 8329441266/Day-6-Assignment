#!/bin/bash
read -p "Enter number : " number;
#x=$(( $number % 2 ));
while [ $number%2 == 0 ]
do
	echo "2 ";
	number=$(( $number / 2 ));
done
sqrt=$(echo "sqrt($num)" | bc );
for (( i=3; i<=$sqrt; i+=2 ))
do
	#y=$(( $number % $i ));
	while [ $number % $i == 0 ]
	do
		echo "$i ";
		number=$(( $number / $i ));
	done
done
if [ $number -ge 2 ]
then
	echo "$number";
fi
