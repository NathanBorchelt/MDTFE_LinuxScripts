#/bin/bash

#This script is not made by u/ALIansEN94. If there are issues please report them
#to u/ThatOneGuyThatYou

VERSION="0.1.5"

which wine > /dev/null

if (( $? != 0 )); then

	if [ "$(grep -Ei 'debian|buntu|mint' /etc/*release)" ]; then
   		echo 'Wine has not been detected on this system, do you wish to install
		(y/n)'

		read isntallWine

		if [ "$(grep -Ei 'y|Y' $installWine)" ]; then
			sudo apt-get install wine64
			sudo apt-get install wine32
			sudo apt-get update
		fi

	fi

	if [ "$(grep -Ei 'fedora|redhat' /etc/*release)" ]; then
		echo 'Wine has not been detected on this system, do you wish to install
		(y/n)'

		read isntallWine

		#Forgive me on this people, I work on an Ubuntu machine, let me know if
		#you have issues and I will work with you to fix it

		if [ "$(grep -Ei 'y|Y' $installWine)" ]; then
			sudo yum install wine
			sudo yum update
		fi

	fi
fi

wine "MDTFE_Setup_$VERSION.exe"
