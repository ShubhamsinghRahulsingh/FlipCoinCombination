echo " Welcome to the flip coin combination program"


read -p "Enter the time upto which you want to flip a coin: " n;

heads=0
tails=0

for (( i=1; i<=n; i++ ))
do
       flip=$(($(($RANDOM%10))%2))
       if [ $flip -eq 1 ]
       then
            heads=$(($heads+1))
       else
            tails=$(($tails+1))
       fi
done
declare -A flip
flip[head]=$heads
flip[tail]=$tails
echo "heads comes ${flip[head]} times"
echo "tails comes ${flip[tail]} times"
total=$((${flip[head]}+${flip[tail]}))
echo "Total Flips: $total"
HeadPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[head]}/$total' * '100')}'`
TailPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[tail]}/$total' * '100')}'`
echo "Head percentage is $HeadPercentage"
echo "Tails percentage is $TailPercentage"
