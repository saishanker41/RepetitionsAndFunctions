#!/bin/bash -x

function palindrome() {
      read -p "Enter number: " n
      temp=$n
      rev=0
      while [ $n -gt 0 ];
      do
          digit=$(($n%10))
          rev=$(($rev * 10 + $digit))
          n=$(($n/10))
      done
      if [ $temp -eq $rev ];
      then
          echo "The number is palindrome"
      else
          echo "The number is not a palindrome"
      fi


}
palindrome
