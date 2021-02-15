
#! /bin/bash -x

random=$((  RANDOM%2 ))
if [ $random -eq 0 ]
then
	echo "Heads win"
else
	echo "Tails win"
fi
