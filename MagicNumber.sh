#!/bin/bash -x

read -p "Enter magic number: " n
lower=1
upper=100
mid=$(($n/2))

while [ $n -le $upper ];
do

      if [ $n -eq $mid ];
      then
           echo "$n is a magic number"
           break

      elif [ $n -lt $mid ];
      then
           mid
      else
           r=$(($mid + 1))
      fi
echo "$n is not present"
done
