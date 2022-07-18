#!/bin/bash

function	check_c07_ex00() {
	usr_out=$current_dir/user_output/c07/ex00
	mkdir $usr_out
	printf " ${YELLOW}ex00\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex00/ft_create_elem.c" ; then
		msg_nothing_turned_in "ex00/ft_create_elem.c"
		return
	fi
#	PROTOTYPE=$(grep -E "^$TYPE"$'\t{1,}'"$FUNC_NAME"'\([^)]+\)' src/c07/ex00/ft_create_elem.c)
	check_norme "src/c07/ex00/ft_create_elem.c"
	check_prototype "void" "ft_create_elem" "src/c07/ex00/ft_create_elem.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex00/main.c ./src/c07/ex00/ft_create_elem.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/ft_create_elem.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES=" !\"#\$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex00/ft_create_elem.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex00/ft_create_elem.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c07_ex01() {
	usr_out=$current_dir/user_output/c07/ex01
	mkdir $usr_out
	printf " ${YELLOW}ex01\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex01/ft_list_push_front.c" ; then
		msg_nothing_turned_in "ex01/ft_list_push_front.c"
		return
	fi
	check_norme "src/c07/ex01/ft_list_push_front.c"
	check_prototype "void" "ft_list_push_front" "src/c07/ex01/ft_list_push_front.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex01/main.c ./src/c07/ex01/ft_list_push_front.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/ft_list_push_front.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="abcdefghijklmnopqrstuvwxyz"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex01/ft_list_push_front.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex01/ft_list_push_front\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c07_ex02() {
	usr_out=$current_dir/user_output/c07/ex02
	mkdir $usr_out
	printf " ${YELLOW}ex02\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex02/ft_list_size.c" ; then
		msg_nothing_turned_in "ex02/ft_list_size.c"
		return
	fi
	check_norme "src/c07/ex02/ft_list_size.c"
	check_prototype "void" "ft_list_size" "src/c07/ex02/ft_list_size.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex02/main.c ./src/c07/ex02/ft_list_size.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/ft_list_size.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="zyxwvutsrqponmlkjihgfedcba"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex02/ft_list_size.c${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/ft_list_size${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c07_ex03() {
	usr_out=$current_dir/user_output/c07/ex03
	mkdir $usr_out
	printf " ${YELLOW}ex03\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex03/ft_list_last.c" ; then
		msg_nothing_turned_in "ex03/ft_list_last.c"
		return
	fi
	check_norme "src/c07/ex03/ft_list_last.c"
	check_prototype "void" "ft_list_last" "src/c07/ex03/ft_list_last.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex03/main.c ./src/c07/ex03/ft_list_last.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_list_last.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="0123456789"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex03/ft_list_last.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_list_last\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c07_ex04() {
	usr_out=$current_dir/user_output/c07/ex04
	mkdir $usr_out
	printf " ${YELLOW}ex04\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex04/ft_list_push_back.c" ; then
		msg_nothing_turned_in "ex04/ft_list_push_back.c"
		return
	fi
	check_norme "src/c07/ex04/ft_list_push_back.c"
	check_prototype "void" "ft_list_push_back" "src/c07/ex04/ft_list_push_back.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex04/main.c ./src/c07/ex04/ft_list_push_back.c 
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

function	check_c07_ex05() {
	usr_out=$current_dir/user_output/c07/ex05
	mkdir $usr_out
	printf " ${YELLOW}ex05\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c07/ex05/ft_list_push_strs.c" ; then
		msg_nothing_turned_in "ex05/ft_list_push_strs.c"
		return
	fi
	check_norme "src/c07/ex05/ft_list_push_strs.c"
	check_prototype "void" "ft_list_push_strs" "src/c07/ex05/ft_list_push_strs.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c07/ex05/main.c ./src/c07/ex05/ft_list_push_strs.c 
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

function	c07() {
	mkdir src/c07 user_output/c07
	print_current_part "c07"
	cp -r $src_path/c07/ex* ./src/c07  # copying src files
	
	check_c07_ex00
	check_c07_ex01
	check_c07_ex02
	check_c07_ex03
	check_c07_ex04
	check_c07_ex05
	rm -rf $current_dir/user_output/c07 $current_dir/src/c07
	printf "\n${NOCOLOR}"
	printf "${YELLOW}==============================================="
	printf "${YELLOW}\nType ${NOCOLOR}./gradme.sh ${YELLOW}Below To Run This Tester Again\n${NOCOLOR}"
	printf "${YELLOW}===============================================\n${NOCOLOR}"
	printf "\n\nAll c07 tests are done." >> DEEPTHOUGHT
}
