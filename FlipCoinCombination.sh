echo "Welcome to Flip Coin Combination Program"

declare -A dict

dict[HH]=0
dict[HT]=0
dict[TH]=0
dict[TT]=0

for (( i=0; i<10; i++ ))
do
	randomCheck1=$((RANDOM%2))
	randomCheck2=$((RANDOM%2))
	case $randomCheck1$randomCheck2 in
		11)
			((dict[HH]++))
		;;
		10)
			((dict[HT]++))
		;;
		01)
			((dict[TH]++))
		;;
		00)
			((dict[TT]++))
		;;
	esac
done

echo "Double heads percentage: $((${dict[HH]}*100/10)) percent"
echo "Single head and tail percentage: $((${dict[HT]}*100/10)) percent"
echo "Single tail and head percentage: $((${dict[TH]}*100/10)) percent"
echo "Double Tails percentage: $((${dict[TT]}*100/10)) percent"