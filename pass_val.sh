red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`



password=$1

len="${#password}"


if test $len -ge 10 ; then
	echo "$password" | grep -q [0-9]
	if test $? -eq 0 ; then
		echo "$password" | grep -q [A-Z]
		if test $? -eq 0 ; then
			echo "$password" | grep -q [a-z]   
			if test $? -eq 0 ; then
				echo "${green}Strong password${reset}"
				exit 0
			else
				echo "${red}weak password include lower case char${reset}"
				exit 1
			fi
		else
			echo "${red}weak password include capital char${reset}"
			exit 1
		fi
	else
		echo "${red}please include the numbers in password it is weak password${reset}"
		exit 1
	fi
else
	echo "${red}password lenght should be greater than or equal 10${reset}"
	exit 1
fi