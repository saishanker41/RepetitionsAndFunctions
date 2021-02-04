#!/bin/bash -x

read -p "Enter the value of n: " n

limit=256;
result=1;
while [ $result -ne $limit ]
do
       result=($result * 2)
done
