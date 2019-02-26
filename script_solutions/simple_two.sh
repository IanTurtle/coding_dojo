# Print your name 10 times and your favourite food 6 times

for i in {1..10}; do
	echo Ian
done

j=0
while [ "$j" -lt 6 ]; do
	echo Pizza
	j=$(($j+1))
done
