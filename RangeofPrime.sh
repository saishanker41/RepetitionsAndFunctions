#!/bin/bash -x

read -p "Enter lower range: " lower

read -p "Enter upper range: " upper
for (( num=$lower; num<=$upper; num++ ))
do
      p=0
      for (( i=2;  i<=$num-1; i++ ))
      do
           if [ `expr $num % $i` -eq 0 ]
           then
                p=1
                break

            fi
      done
      if [ `expr $p` -eq 0 ]
      then

          echo "$num"
      fi

done
