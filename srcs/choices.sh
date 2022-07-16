#!/bin/bash

function	choices() {
printf "${YELLOW}=====================
THE 42 PISCINE TESTER
=====================

${YELLOW}SHELL00 AND SHELL01
	
${YELLOW}Type${NOCOLOR} Shell00${YELLOW} To Test Your Shell00
${YELLOW}Type${NOCOLOR} Shell01${YELLOW} To Test Your Shell01
	
${YELLOW}Type${NOCOLOR} both shells${YELLOW} To Test Both Your Shell00 and Shell01 Together
 
C00 TO C06

${YELLOW}Type${NOCOLOR} c00${YELLOW} To Test Your C00
${YELLOW}Type${NOCOLOR} c01${YELLOW} To Test Your C01
${YELLOW}Type${NOCOLOR} c02${YELLOW} To Test Your C02
${YELLOW}Type${NOCOLOR} c03${YELLOW} To Test Your C03
${YELLOW}Type${NOCOLOR} c04${YELLOW} To Test Your C04
${YELLOW}Type${NOCOLOR} c05${YELLOW} To Test Your C05
${YELLOW}Type${NOCOLOR} c06${YELLOW} To Test Your C06

${YELLOW}Type${NOCOLOR} all c projects${YELLOW} To Test Your C00 To C06 Together
${YELLOW}Type${NOCOLOR} all${YELLOW} To Test Both Your Shell and C Together

${YELLOW}Type${NOCOLOR} ./gradme.sh${YELLOW} To Run This Tester Again

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