echo " Welcome to the flip coin combination program"


read -p "Enter the time upto which you want to flip a coin: " n;

HHH=0
HHT=0
HTH=0
THH=0
TTT=0
TTH=0
THT=0
HTT=0
for (( i=1; i<=n; i++ ))
do
       flip1=$(($(($RANDOM%10))%2))
       flip2=$(($(($RANDOM%10))%2))
       flip3=$(($(($RANDOM%10))%2))
       if [ $flip1 -eq 1 -a $flip2 -eq 1 -a $flip3 -eq 1 ]
       then
            HHH=$(($HHH+1))

       elif [ $flip1 -eq 1 -a $flip2 -eq 1 -a $flip3 -eq 0 ]
       then
            HHT=$(($HHT+1))
       elif [ $flip1 -eq 1 -a $flip2 -eq 0 -a $flip3 -eq 1 ]
       then
            HTH=$(($HTH+1))
       elif [ $flip1 -eq 0 -a $flip2 -eq 1 -a $flip3 -eq 1 ]
       then
            THH=$(($THH+1))
       elif [ $flip1 -eq 0 -a $flip2 -eq 0 -a $flip3 -eq 0 ]
       then
            TTT=$(($TTT+1))
       elif [ $flip1 -eq 0 -a $flip2 -eq 0 -a $flip3 -eq 1 ]
       then
            TTH=$(($TTH+1))
       elif [ $flip1 -eq 0 -a $flip2 -eq 1 -a $flip3 -eq 0 ]
       then
            THT=$(($THT+1))
       else
            HTT=$(($HTT+1))
       fi
done
declare -A flip
flip[hhh]=$HHH
flip[hht]=$HHT
flip[hth]=$HTH
flip[thh]=$THH
flip[ttt]=$TTT
flip[tth]=$TTH
flip[tht]=$THT
flip[htt]=$HTT
echo "we get:${flip[@]}

total=$((${flip[hhh]}+${flip[hht]}+${flip[hth]}+${flip[thh]}+${flip[ttt]}+${flip[tth]}+${flip[tht]}+${flip[htt]}))

HHHPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[hhh]}/$total' * '100')}'`
HHTPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[hht]}/$total' * '100')}'`
HTHPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[hth]}/$total' * '100')}'`
THHPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[thh]}/$total' * '100')}'`
TTTPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[ttt]}/$total' * '100')}'`
TTHPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[tth]}/$total' * '100')}'`
THTPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[tht]}/$total' * '100')}'`
HTTPercentage=`awk 'BEGIN{printf("%0.2f",'${flip[htt]}/$total' * '100')}'`
echo "HHHPercentage:$HHHPercentage"
echo "HHTPercentage:$HHTPercentage"
echo "HTHPercentage:$HTHPercentage"
echo "THHPercentage:$THHPercentage"
echo "TTTPercentage:$TTTPercentage"
echo "TTHPercentage:$TTHPercentage"
echo "THTPercentage:$THTPercentage"
echo "HTTPercentage:$HTTPercentage"
