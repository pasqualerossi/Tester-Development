#!/bin/bash

# CHANGE TO WHERE YOUR PISCINE FOLDER IS LOCATED AT

src_path="../piscine" # set projects directory here

# DO NOT CHANGE ANYTHING BELOW

current_dir=$PWD

source	srcs/var/colors.sh
source	srcs/var/dspl.sh
source	srcs/var/env.sh
source	srcs/init.sh
source	srcs/utils.sh
source	srcs/choices.sh
source	srcs/msg.sh
source	srcs/gfx.sh
source	srcs/checks/check_file.sh
source	srcs/checks/check_shell00.sh
source	srcs/checks/check_shell01.sh
source	srcs/checks/check_c00.sh
source	srcs/checks/check_c01.sh
source	srcs/checks/check_c02.sh
source	srcs/checks/check_c03.sh
source	srcs/checks/check_c04.sh
source	srcs/checks/check_c05.sh
source	srcs/checks/check_c06.sh
source	srcs/checks/check_c07.sh
source	srcs/checks/check_c08.sh
source	srcs/checks/check_c09.sh
source	srcs/checks/check_c10.sh
source	srcs/checks/check_c11.sh
source	srcs/checks/check_c12.sh
source	srcs/checks/check_c13.sh

#function	cleanup() {
#	rm -rf src user_output
#}


case $1 in
	--help | -h) 
		man srcs/help ;;
	--shell00 | -sh00) init ; shell00 ;;
	--shell01 | -sh01) init ; shell01 ;;
	--c00 | -c00) init ; c00 ;;
	--c01 | -c01) init ; c01 ;;
	--c02 | -c02) init ; c02 ;;
	--c03 | -c03) init ; c03 ;;
	--c04 | -c04) init ; c04 ;;
	--c05 | -c05) init ; c05 ;;
	--c06 | -c06) init ; c06 ;;
	--c07 | -c07) init ; c07 ;;
	--c08 | -c08) init ; c08 ;;
	--c09 | -c09) init ; c09 ;;
	--c10 | -c10) init ; c10 ;;
	--c11 | -c11) init ; c11 ;;
	--c12 | -c12) init ; c12 ;;
	--c13 | -c13) init ; c13 ;;
	-a) init ; run_all ;;
	*)
#		man srcs/help ;;
		init ; choices ;;# shell00 ; shell01 ; c00 ; c01 ; c02;; 
esac

#rm -rf src user_output
cd $current_dir
cleanup
#trap cleanup EXIT
