#!/bin/bash -x

flips=0
heads=0
tails=0

while [ $flips -lt 20 ];
do
      random=$(( RANDOM%2 ))

      if [ $random -eq 1 ];
      then
           echo "heads"
           heads=$(($heads+1))
      else
           echo "tails"
           tails=$(($tails+1))
      fi
      flips=$(($flips+1))
done
while [ $heads -eq 11 -o $tails -eq 11 ];
do

      echo "$heads heads  $tails tails"
      break
done



