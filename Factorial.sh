#!/bin/bash -x

read -p "Enter the number: " n
fact=1
res=0
res1=1
if [ $n -lt 0 ];
then
    echo "$res"

elif [ $n -eq 0 ];
then
    echo "$res1"

else

    for (( i=1; i<=n; i++ ))
    do
      fact=$((fact*i))
    echo "$fact"
    done
fi
