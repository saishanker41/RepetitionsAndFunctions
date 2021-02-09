read -p "Enter the value: " n

powerofTwo=1;
limit=256

for (( i=0; i<=$n; i++ ));
do
     powerofTwo=$(( 2 * $powerofTwo ))
done
while [ $powerofTwo -le $limit ];
do
      echo "$powerofTwo"
      break

done
