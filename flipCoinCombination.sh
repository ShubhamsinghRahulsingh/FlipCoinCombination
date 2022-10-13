echo " Welcome to the flip coin combination program"


read -p "Enter the time upto which you want to flip a coin: " n;


heads=0
tails=0

for (( i=1; i<=n; i++ ))
do
       flip=$(($(($RANDOM%10))%2))
       array[i]=$flip
       echo "${array[i]}"
done
for (( i=0; i<=n; i++ ))
do
   if [ ${array[i]} >> ${array[i+1]} ]
   then
       temp=${array[i]}
       array[i]=${array[i+1]}
       array[i+1]=$temp
   else
       break
   fi
done
echo "After sorting :${array[@]}"
