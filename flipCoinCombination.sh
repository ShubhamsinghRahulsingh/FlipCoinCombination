echo " Welcome to the flip coin combination program"


flip=$(($(($RANDOM%10))%2))
echo "coin flip is $flip"
if [ $flip -eq 1 ]
      then
          echo "Heads"
      else
          echo "Tails"
fi
