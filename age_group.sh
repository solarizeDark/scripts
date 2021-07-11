#!/usr/bin/bash


while true
do	

	echo enter your name:;
	read name

	[ -z $name ] && break

	
	echo enter your age:;
	read age

	[ $age -eq 0 ] && break	
	
	group=""
	[ $age -le 16 ] && group="child"
	[ $age -gt 25 ] && group="adult"
	[ -z $group ]  && group="youth" 

	echo "$name, your group is $group"

done
echo "Bye"
