#!/bin/bash 
turns=0
heads=0
tails=0
function flipCoin() {
	flipCheck=$(( RANDOM%2 ))
	echo $flipCheck
}
while [ $turns -le 31 ]
do
        result="$(flipCoin $flipCheck)"
        case $result in
                1)
                  echo "Heads"$heads
                  ((heads++))
                  ;;
                *)
                  echo "tails"$tails
                  ((tails++))
                ;;
        esac
        ((turns++))


         if [ $heads -eq 21 ]
            then
            echo "Heads won $heads times"
         elif [ $tails -eq 21 ]
            then
            echo "Tails won $tails times"
         elif [ $heads -eq $tails ]
            then
            echo "tie"
         fi
done
echo "Heads=$heads, Tails=$tails"
