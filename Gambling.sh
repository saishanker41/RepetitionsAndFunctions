#!/bin/bash -x

starts=100
goal=200
trails=1000
bets=0
wins=0

for (( t=0; t<trails; t++ ));
do
     cash=$starts
     while [ $cash -gt 0 -a $cash -lt $goal ];
     do
            bets=$(($bets+1))
            r=0.$((RANDOM%98+1))
            if [ `expr $r` -lt 0.5 ];
            then
                 cash=$(($cash+1))
            else
                 cash=$(($cash-1))
            fi
     done
     if [ $cash -eq $goal ];
     then
          wins=$(($wins+1))
     fi
done
echo "$wins wins of $trails"
echo "bets $bets"
