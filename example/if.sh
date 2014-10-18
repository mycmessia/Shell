#! /bin/sh

if [ -f /bin/bash ]
then echo 'bin/bash is a file'
else echo 'bin/bash is not a file'
fi

if :	# : is a command which always return true 
then echo 'always true' 
fi

echo "Is it morning? Please answer yes or no."
read ANSWER
if [ "$ANSWER" = "yes" ];then
	echo "Good morning!"
elif [ "$ANSWER" = "no" ];then
	echo "Good afternoon!"
else
	echo "Sorry, $ANSWER is not recognized. Please enter yes or no."
	exit 1	# exit 1 means error
fi
exit 0
