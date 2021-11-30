#Tarun Satheesh

echo "Enter the number"
read n

for((i=n-1;i>0;i--))
do

	echo -n " "
	
done

echo "*"

for((i=1;i<n;i++))
do

	for((j=(n-i-1);j>0;j--))
	do

		echo -n " "
	done

	echo  -n '*'

	for((j=0;j<2*i;j++))
	do
		echo -n ' '
	done

	echo  '*'

done



for((i=$((n-1));i>0;i--))
do

	for((j=0;j<(n-i-1);j++))
	do

		echo -n " "
	done

	echo  -n $(($i+1))

	for((j=0;j<2*i;j++))
	do
		echo -n " "
	done

	echo  $(($i+1))

done

for((i=n-1;i>0;i--))
do

	echo -n " "
	
done
echo 1