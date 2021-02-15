
#! /bin/bash -x

declare -A combo
declare -A count

combo=(["H"]=0 ["T"]=1 ["HH"]=2 ["TT"]=3 ["HT"]=4 ["TH"]=5)

for (( i=0; i<6; i+=1 ))
do
	count[$i]=0
done

for (( i=1; i<=20; i+=1 ))
do
        random=$(( RANDOM%2 ))
        count[$random]=$(( ${count[$random]}+1 ))
done

for (( i=1; i<=20; i+=1 ))
do
        random=$(( RANDOM%4+2 ))
        count[$random]=$(( ${count[$random]}+1 ))
done

for (( i=0; i<6; i+=1 ))
do
	count[$i]=$(( 5*${count[$i]} ))
done

for key in ${!combo[@]}
do
        value=${combo[$key]}
        echo $key "=" ${count[$value]}"%"
done
