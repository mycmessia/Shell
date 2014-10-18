#! /bin/sh

COUNT=3

echo "Enter password:"
read TRY
COUNT=$(($COUNT-1))	#why $(()) right, ``wrong

while [ "$TRY" != "secret" -a "$COUNT" -gt 0 ];do #why -a can't be replaced by &&
if [ "$COUNT" -gt 1 ];then
	echo "Sorry, please try again, you have $COUNT chances."
else
	echo "Sorry, please try again, you have 1 chance."
fi
read TRY
COUNT=$(($COUNT-1))
done

if [ "$COUNT" -lt 1 ]; then
	echo "Your enter is wrong."
else
	echo "Your enter is right."
fi
