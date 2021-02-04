read -p "Enter the number: " num

one=1
if [ $num -gt $one ];
then
     for (( i=2; i<=num/2; i++ ));
     do
          if [ $((num%i)) -eq 0 ];
          then
              echo "$num is not prime number"
      #else
          #echo #$num is prime number"
              exit 0
          fi
     done

     echo "$num is a prime number"
else
     echo "$num is not a prime number"
fi

