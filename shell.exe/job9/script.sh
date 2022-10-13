#!/bin/bash
(cat  Shell_Userlist.csv; echo;) | while IFS=\n read -r varligne
do 
	nom=`echo $varligne |cut -d "," -f2`
	motdepasse=`echo $varligne |cut -d ',' -f4`
	role=`echo $varligne |cut -d ',' -f5`
	echo $motdepasse  '+'  $nom '+' $role
	
done
