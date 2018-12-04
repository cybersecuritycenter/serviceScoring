#!/bin/bash

x=$(./sshScore.exp password 192.168.30.4 id bob)
y="uid=1000(bob)"
z=$(date +"%D %T")
if echo "$x" | grep -q "$y"; then
	echo "SSH $y is up at $z" >> scores.txt;

else
	echo "ssh $y is down at $z" >> scores.txt;
fi

#sleep 5
#echo "x = $x"
