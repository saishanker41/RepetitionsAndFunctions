#!/bin/bash -x

function PrimeOrNot() {

      for (( i=2; i<=n/2; i++ ));
      do
           if [ $((n%i)) -eq 0 ];
           then
               echo "$n is not a prime number"
               exit 0
           fi
      done
      echo "$n is a prime number"
      palindrome $n

}

function palindrome() {


      rev=0
      temp=$n
      while [ $n -gt 0 ];
      do
            digit=$(($n%10))
            rev=$(($rev * 10 + digit))
            n=$(($n/10))
      done
      if [ $temp -eq $rev ]
      then
            echo "The number is palindrome"
      else
            echo "The number is not palindrome"
      fi
}

function check() {

    if [ PrimeOrNot -eq palindrome ];
    then
        echo "number is palprime"
    fi
}
check;
