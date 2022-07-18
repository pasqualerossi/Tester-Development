#!/bin/bash

function	check_c08_ex04() {
	usr_out=$current_dir/user_output/c08/ex04
	mkdir $usr_out
	printf " ${YELLOW}ex04\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c08/ex04/ft_list_push_back.c" ; then
		msg_nothing_turned_in "ex04/ft_list_push_back.c"
		return
	fi
	check_norme "src/c08/ex04/ft_list_push_back.c"
	check_prototype "void" "ft_list_push_back" "src/c08/ex04/ft_list_push_back.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c08/ex04/main.c ./src/c08/ex04/ft_list_push_back.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/ft_list_push_back.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="0123456789"
	cd $usr_out
	local NUMBER=(42 2147483646 1337 -42 -2147483647 -1337 6473287 -328 612567)
	local i=0
	while [ $i -le 8 ]
	do
		local USER_OUTPUT=$(./user.out ${NUMBER[$i]})
		printf "> test $i with n=${NUMBER[i]}\n" >> $current_dir/DEEPTHOUGHT
		if [ "$USER_OUTPUT" == "P" ] && [ ${NUMBER[i]} -gt 0 ]; then
			printf "${uni_success}ex04/ft_list_push_back.c\t${diff_ok}${NOCOLOR}\n\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		elif [ "$USER_OUTPUT" == "N" ] && [ ${NUMBER[i]} -lt 0 ] ; then
			printf "${uni_success}ex04/ft_list_push_back.c\t${diff_ok}${NOCOLOR}\n\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex04/ft_list_push_back.c\t${diff_ko}${NOCOLOR}\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((i++))
	done	
	cd $current_dir
}

function	check_c08_ex05() {
	usr_out=$current_dir/user_output/c08/ex05
	mkdir $usr_out
	printf " ${YELLOW}ex05\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c08/ex05/ft_list_push_strs.c" ; then
		msg_nothing_turned_in "ex05/ft_list_push_strs.c"
		return
	fi
	check_norme "src/c08/ex05/ft_list_push_strs.c"
	check_prototype "void" "ft_list_push_strs" "src/c08/ex05/ft_list_push_strs.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c08/ex05/main.c ./src/c08/ex05/ft_list_push_strs.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/ft_list_push_strs.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="012, 013, 014, 015, 016, 017, 018, 019, 023, 024, 025, 026, 027, 028, 029, 034, 035, 036, 037, 038, 039, 045, 046, 047, 048, 049, 056, 057, 058, 059, 067, 068, 069, 078, 079, 089, 123, 124, 125, 126, 127, 128, 129, 134, 135, 136, 137, 138, 139, 145, 146, 147, 148, 149, 156, 157, 158, 159, 167, 168, 169, 178, 179, 189, 234, 235, 236, 237, 238, 239, 245, 246, 247, 248, 249, 256, 257, 258, 259, 267, 268, 269, 278, 279, 289, 345, 346, 347, 348, 349, 356, 357, 358, 359, 367, 368, 369, 378, 379, 389, 456, 457, 458, 459, 467, 468, 469, 478, 479, 489, 567, 568, 569, 578, 579, 589, 678, 679, 689, 789"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex05/ft_list_push_strs.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/ft_list_push_strs\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c08() {
	mkdir src/c08 user_output/c08
	print_current_part "c08"
	cp -r $src_path/c08/ex* ./src/c08  # copying src files
	
	//check_c08_ex00
	//check_c08_ex01
	//check_c08_ex02
	//check_c08_ex03
	check_c08_ex04
	check_c08_ex05
	rm -rf $current_dir/user_output/c08 $current_dir/src/c08
	printf "\n${NOCOLOR}"
	printf "${YELLOW}==============================================="
	printf "${YELLOW}\nType ${NOCOLOR}./gradme.sh ${YELLOW}Below To Run This Tester Again\n${NOCOLOR}"
	printf "${YELLOW}===============================================\n${NOCOLOR}"
	printf "\n\nAll c08 tests are done." >> DEEPTHOUGHT
}