echo " Welcome to the flip coin combination program"


read -p "Enter the time upto which you want to flip a coin: " n;

HH=0
HT=0
TT=0
TH=0

for (( i=1; i<=n; i++ ))
do
       flip1=$(($(($RANDOM%10))%2))
       flip2=$(($(($RANDOM%10))%2))
       if [ $flip1 -eq 1 -a $flip2 -eq 1 ]
       then
            HH=$(($HH+1))

       elif [ $flip1 -eq 1 -a $flip2 -eq 0 ]
       then
            HT=$(($HH+1))
       elif [ $flip1 -eq 0 -a $flip2 -eq 0 ]
       then
            TT=$(($TT+1))
       else
            TH=$(($TH+1))
       fi
done
declare -A flip
flip[hh]=$HH
flip[ht]=$HT
flip[tt]=$TT
flip[th]=$TH
echo "Head in both comes ${flip[hh]} times"
echo "Head in first and Tail in second comes ${flip[ht]} times"
echo "Tail in both comes ${flip[tt]} times"
echo "Tail in first and Head in second comes ${flip[th]} times"

total=$((${flip[hh]}+${flip[ht]}+${flip[tt]}+${flip[th]}))

HHPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[hh]}/$total' * '100')}'`
HTPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[ht]}/$total' * '100')}'`
TTPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[tt]}/$total' * '100')}'`
THPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[th]}/$total' * '100')}'`
echo "Both Head percentage is $HHPercentage"
echo "Head and Tail percentage is $HTPercentage"
echo "Both Tail percentage is $TTPercentage"
echo "Tail and Head percentage is $THPercentage"
