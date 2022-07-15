#!/bin/bash

function	choices() {
printf "${YELLOW}
        =================
        42 PISCINE TESTER
        =================	

	SHELL00 AND SHELL01	

	${NOCOLOR}Type 'shell00' To Test Your Shell00
	${NOCOLOR}Type 'shell01' To Test Your Shell01

	${NOCOLOR}Type 'both shells' To Test Both Your Shell00 and Shell01 Together

	${YELLOW}C00 TO C06

	${NOCOLOR}Type 'c00' To Test Your C00
	${NOCOLOR}Type 'c01' To Test Your C01
	${NOCOLOR}Type 'c02' To Test Your C02
	${NOCOLOR}Type 'c03' To Test Your C03
	${NOCOLOR}Type 'c04' To Test Your C04
	${NOCOLOR}Type 'c05' To Test Your C05
	${NOCOLOR}Type 'c06' To Test Your C06

	${NOCOLOR}Type 'all' c projects' To Test Your C Projects Together

	${YELLOW}SHELL AND C
	
	${NOCOLOR}Type 'all' To Test Both Your Shell and C Projects Together

	${YELLOW}TO RUN TESTER AGAIN

	${NOCOLOR}Type ./grademe.sh 


${NOCOLOR}What Do You Want To Test?: "
	read
		if [ "$REPLY" == "Shell00" ] || [ "$REPLY" == "shell00" ] ; then
			shell00
		elif [ "$REPLY" == "Shell01" ] || [ "$REPLY" == "shell01" ] ; then
			shell01
		elif [ "$REPLY" == "Both Shells" ] || [ "$REPLY" == "both shells" ] ; then
			run_both_shells
		elif [ "$REPLY" == "c00" ] || [ "$REPLY" == "C00" ] ; then
			c00	
		elif [ "$REPLY" == "c01" ] || [ "$REPLY" == "C01" ] ; then
			c01
		elif [ "$REPLY" == "c02" ] || [ "$REPLY" == "C02" ] ; then
			c02
		elif [ "$REPLY" == "c03" ] || [ "$REPLY" == "C03" ] ; then
			c03
		elif [ "$REPLY" == "c04" ] || [ "$REPLY" == "C04" ] ; then
			c04
		elif [ "$REPLY" == "c05" ] || [ "$REPLY" == "C05" ] ; then
			c05
		elif [ "$REPLY" == "c06" ] || [ "$REPLY" == "C06" ] ; then
			c06
		elif [ "$REPLY" == "all c projects" ] || [ "$REPLY" == "All C Projects" ] ; then
			run_all_c
		elif [ "$REPLY" == "all" ] || [ "$REPLY" == "All" ] ; then
			run_all
		else
			printf "\n${RED}Invalid Number: $REPLY \n${NOCOLOR}"
			printf "\n===> Type ./gradme.sh again <==="
	fi
	printf "\n"
}

function	run_all() {
        shell00
	shell01	
        c00
	c01
	c02
	c03
	c04
	c05
	c06
}

function	run_both_shells(){
	shell00
	shell01
}

function	run_all_c(){
	c00
	c01
	c02
	c03
	c04
	c05
	c06
}