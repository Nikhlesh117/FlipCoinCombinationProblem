echo "Welcome to Flip Coin Combination Program"

declare -A dict

dict[HHH]=0
dict[HHT]=0
dict[HTH]=0
dict[THH]=0
dict[HTT]=0
dict[THT]=0
dict[TTH]=0
dict[TTT]=0


for (( i=0; i<10; i++ ))
do
	randomCheck1=$((RANDOM%2))
	randomCheck2=$((RANDOM%2))
	randomCheck3=$((RANDOM%2))
	case $randomCheck1$randomCheck2$randomCheck3 in
		111)
			((dict[HHH]++))
		;;
		110)
			((dict[HHT]++))
		;;
		101)
			((dict[HTH]++))
		;;
		011)
			((dict[THH]++))
       		;;
		100)
                        ((dict[HTT]++))
                ;;
                010)
                        ((dict[THT]++))
                ;;
                001)
                        ((dict[TTH]++))
                ;;
                000)
                        ((dict[TTT]++))

	esac
done

echo "Triplet percentage of HHH: $((${dict[HHH]}*100/10)) percent"
echo "Triplet percentage of HHT: $((${dict[HHT]}*100/10)) percent"
echo "Triplet percentage of HTH: $((${dict[HTH]}*100/10)) percent"
echo "Triplet percentage of THH: $((${dict[THH]}*100/10)) percent"
echo "Triplet percentage of HTT: $((${dict[HTT]}*100/10)) percent"
echo "Triplet percentage of THT: $((${dict[THT]}*100/10)) percent"
echo "Triplet percentage of TTH: $((${dict[TTH]}*100/10)) percent"
echo "Triplet percentage of TTT: $((${dict[TTT]}*100/10)) percent"