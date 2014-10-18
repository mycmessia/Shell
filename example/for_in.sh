#! /bin/sh

for FRUIT in apple pear banana; do
	echo "I like $FRUIT"
done

#change some file name in now dir
#from chap0 chap1 chap2 to chap0~ chap1~ chap2~

for FILE in chap?; do
	mv "$FILE" "$FILE~"
done
