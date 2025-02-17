#/bin/bash

#This script is not made by u/ALIansEN94. If there are issues please report them
#to u/ThatOneGuyThatYou

VERSION="0.1.5"

which wine > /dev/null

if (( $? != 0 )); then
	
	echo 'Wine has not been detected on this system, do you wish to install (y/n)'
	
	read installWine
	
	if [ "$(grep -Ei 'debian|buntu|mint' /etc/*release)" ]; then
   		
		
		if [ "$(grep -Ei 'y|Y' $installWine)" ]; then
			sudo apt-get install wine64
			sudo apt-get install wine32
			sudo apt-get update
		fi

	fi

	if [ "$(grep -Ei 'fedora|redhat' /etc/*release)" ]; then

		#Forgive me on this people, I work on an Ubuntu machine, let me know if
		#you have issues and I will work with you to fix it

		if [ "$(grep -Ei 'y|Y' $installWine)" ]; then
			sudo yum install wine
			sudo yum update
		fi

	fi

	echo 'This has installed Wine using the default package handler, you may
	want to install it with FlatPak or a different repo if it causes issues and
	may be out of date'

fi

wine "MDTFE_Setup_$VERSION.exe"
