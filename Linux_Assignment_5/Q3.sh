#!/bin/bash
echo "enter your number"
read number

if [ $number -lt 1 ]
then
echo "$number is Not prime number"
exit 1
fi

if [ $((number % 2)) -eq 0 ] 
then
echo "$number is NOT a prime number"
exit 1
fi

for ((i=3; i<=$((number ** 0.5)); i+=2)) 
do
if ($((number % i)) -eq 0) 
then
echo "$number is NOT prime number"
exit 1
fi
done

echo "$number is a prime number"
