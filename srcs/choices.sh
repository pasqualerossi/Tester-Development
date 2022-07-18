#!/bin/bash

function	choices() {
printf "${YELLOW}=====================
THE 42 PISCINE TESTER
=====================

${NOCOLOR}Please Select a Module Below

${YELLOW}SHELL00 AND SHELL01
	
${YELLOW}Type${NOCOLOR} shell00${YELLOW} To Test Your Shell00
${YELLOW}Type${NOCOLOR} shell01${YELLOW} To Test Your Shell01
 
C00 TO C13

${YELLOW}Type${NOCOLOR} c00${YELLOW} To Test Your C00
${YELLOW}Type${NOCOLOR} c01${YELLOW} To Test Your C01
${YELLOW}Type${NOCOLOR} c02${YELLOW} To Test Your C02
${YELLOW}Type${NOCOLOR} c03${YELLOW} To Test Your C03
${YELLOW}Type${NOCOLOR} c04${YELLOW} To Test Your C04
${YELLOW}Type${NOCOLOR} c05${YELLOW} To Test Your C05
${YELLOW}Type${NOCOLOR} c06${YELLOW} To Test Your C06
${YELLOW}Type${NOCOLOR} c07${YELLOW} To Test Your C07
${YELLOW}Type${NOCOLOR} c08${YELLOW} To Test Your C08
${YELLOW}Type${NOCOLOR} c09${YELLOW} To Test Your C09
${YELLOW}Type${NOCOLOR} c10${YELLOW} To Test Your C10
${YELLOW}Type${NOCOLOR} c11${YELLOW} To Test Your C11
${YELLOW}Type${NOCOLOR} c12${YELLOW} To Test Your C12
${YELLOW}Type${NOCOLOR} c13${YELLOW} To Test Your C13

===============================================
${YELLOW}Type${NOCOLOR} bash ./grademe.sh${YELLOW} To Run This Tester Again
===============================================${NOCOLOR}

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
		elif [ "$REPLY" == "c07" ] || [ "$REPLY" == "C07" ] ; then
			c07
		elif [ "$REPLY" == "c08" ] || [ "$REPLY" == "C08" ] ; then
			c08
		elif [ "$REPLY" == "c09" ] || [ "$REPLY" == "C09" ] ; then
			c09
		elif [ "$REPLY" == "c10" ] || [ "$REPLY" == "C10" ] ; then
			c10
		elif [ "$REPLY" == "c11" ] || [ "$REPLY" == "C11" ] ; then
			c11
		elif [ "$REPLY" == "c12" ] || [ "$REPLY" == "C12" ] ; then
			c12
		elif [ "$REPLY" == "c13" ] || [ "$REPLY" == "C13" ] ; then
			c13
		elif [ "$REPLY" == "all c" ] || [ "$REPLY" == "All C" ] ; then
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
	c07
	c08
	c09
	c10
	c11
	c12
	c13
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
	c07
	c08
	c09
	c10
	c11
	c12
	c13
}