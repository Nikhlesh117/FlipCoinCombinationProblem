function triplet
{
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
}

#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

function doublet
{
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
}

#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

function singlet
{
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
}

#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
echo "Welcome to flip coin simulation"
echo "Enter 1 for singlet"
echo "Enter 2 for dublet"
echo "Enter 3 for triplet"
read number
case $number in
	1)
		singlet
		;;

	2)
		doublet
		;;

	3)
		triplet
		;;

	*)
		echo "Invalid input"
 esac