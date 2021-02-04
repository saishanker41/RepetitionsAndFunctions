read -p "Enter the value: " n

powerofTwo=1;
for (( i=0; i<=$n; i++ ))
do
     echo "$i   $powerofTwo"

     powerofTwo=$(( 2 * $powerofTwo ))

done
