
#! /bin/bash -x

declare -A combo
declare -A count

combo=(["H"]=0 ["T"]=1)

count=([0]=0 [1]=0)

for (( i=1; i<=20; i+=1 ))
do
        random=$(( RANDOM%2 ))
        count[$random]=$(( ${count[$random]}+1 ))
done

count[0]=$(( 5*${count[0]} ))
count[1]=$(( 5*${count[1]} ))

for key in ${!combo[@]}
do
        value=${combo[$key]}
        echo $key "=" ${count[$value]}"%"
done
