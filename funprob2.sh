#!/bin/bash
function palindromeCheck(){
	n=$1;
	s=0;
	rev="";
	while [ $n -gt 0 ]
	do
		s=$(( $n % 10 ));
		n=$(( $n / 10 ));
		rev=$( echo ${rev}${s} );
	done
	echo $rev;
}

read -p "Enter Number to check Palindrome  : " n;
rev="$( palindromeCheck $n )";
if [ $n -eq $rev ]
then
	echo "$n  palindrome Number";
else
	echo "$n  not a palindrome Number";
fi
