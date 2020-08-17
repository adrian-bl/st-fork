#!/bin/sh

git reset --hard

for x in patches/*.diff ; do
	echo $x
	patch -p1 < $x
done

rm config.h 2> /dev/null
make
