# Pass an integer to the function. Calculate the sum of all square unmber up to and including that integer.
# The script should fail if there are no parameters

max_int=$1
total=0

if [ -z ${max_int} ]; then
	echo Please enter a number
	exit 1
fi

for i in $(seq 1 $max_int); do
	total="$(($total+($i*$i)))"
done
echo Total: $total
