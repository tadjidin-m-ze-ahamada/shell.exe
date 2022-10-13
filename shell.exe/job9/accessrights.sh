#!/bin/bash -ex
(cat Shell_Userlist.csv ; echo;) | while read varligne
do
	motdepasse=`echo $varligne |cut -d ',' -f4`
	nom=`echo $varligne |cut -d ',' -f2`
	role=`echo $varligne |cut -d ',' -f5`
	nom=`echo ${nom,,}`
	motdepasse=`echo ${motdepasse,,} | sed 's/^.\| [a-z]/\U&/g'`
	sudo useradd -m -d /home/$nom $nom
	echo "$nom:$motdepasse" |  sudo chpasswd
	if [ $role = 'Admin' ]
		then
		sudo usermod -aG sudo $nom
	fi
done
