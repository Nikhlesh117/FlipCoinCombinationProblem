echo "Welcome to Flip Coin Combination Program"

declare -A dict

dict[Head]=0
dict[Tail]=0
isHead=1

for (( i=0; i<10; i++ ))
do
	randomCheck=$((RANDOM%2))

	if [ $randomCheck -eq $isHead ]
	then
		((dict[Head]++))
	else
		((dict[Tail]++))
	fi
done

echo "Heads percentage: $((${dict[Head]}*100/10)) percent"
echo "Tails percentage: $((${dict[Tail]}*100/10)) percent"