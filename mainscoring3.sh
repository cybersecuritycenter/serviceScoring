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


x=$(./sshScore.exp password 192.168.30.4 id jared)
y="uid=1001(jared)"
z=$(date +"%D %T")
if echo "$x" | grep -q "$y"; then
	echo "SSH $y is up at $z" >> scores.txt;

else
	echo "ssh $y is down at $z" >> scores.txt;
fi

#sleep 5


x=$(./sshScore.exp password 192.168.30.4 id jeremy)
y="uid=1002(jeremy)"
z=$(date +"%D %T")
if echo "$x" | grep -q "$y"; then
	echo "SSH $y is up at $z" >> scores.txt;

else
	echo "ssh $y is down at $z" >> scores.txt;
fi

#sleep 5

x=$(./sshScore.exp password 192.168.30.4 id john)
y="uid=1003(john)"
z=$(date +"%D %T")
if echo "$x" | grep -q "$y"; then
	echo "SSH $y is up at $z" >> scores.txt;

else
	echo "ssh $y is down at $z" >> scores.txt;
fi

#sleep 5


x=$(./sshScore.exp password 192.168.30.4 id luke)
y="uid=1004(luke)"
z=$(date +"%D %T")
if echo "$x" | grep -q "$y"; then
	echo "SSH $y is up at $z" >> scores.txt;

else
	echo "ssh $y is down at $z" >> scores.txt;
fi

#sleep 5

x=$(./sshScore.exp password 192.168.30.4 id tom)
y="uid=1005(tom)"
z=$(date +"%D %T")
if echo "$x" | grep -q "$y"; then
	echo "SSH $y is up at $z" >> scores.txt;

else
	echo "ssh $y is down at $z" >> scores.txt;
fi

#sleep 5


echo "******--------------------*********" >> scores.txt;
