#!/bin/bash
a="bob"
b="password"

x=$(./ftpscore.exp $a $b)
z=$(date +"%D %T")
y=$z;
CHECK = $(cat /home/ftp/scorecheck.txt)
echo "y1 = $y"
echo "$y" > /home/ftp/scorecheck.txt
echo "$x"
echo "y2 = $y"


if $CHECK | grep "$y"; then
	echo "FTP $a is up at $z" >> scores1.txt;

else
	echo "FTP $a is down at $z" >> scores1.txt;
fi

echo "y3 = $y"

#sleep 5
#echo "x = $x"
