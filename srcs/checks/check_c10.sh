#!/bin/bash

function	check_c10_ex00() {
	usr_out=$current_dir/user_output/c10/ex00
	mkdir $usr_out
	printf " ${YELLOW}ex00\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c10/ex00/ft_create_elem.c" ; then
		msg_nothing_turned_in "ex00/ft_create_elem.c"
		return
	fi
#	PROTOTYPE=$(grep -E "^$TYPE"$'\t{1,}'"$FUNC_NAME"'\([^)]+\)' src/c10/ex00/ft_create_elem.c)
	check_norme "src/c10/ex00/ft_create_elem.c"
	check_prototype "void" "ft_create_elem" "src/c10/ex00/ft_create_elem.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c10/ex00/main.c ./src/c10/ex00/ft_create_elem.c 
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

function	check_c10_ex01() {
	usr_out=$current_dir/user_output/c10/ex01
	mkdir $usr_out
	printf " ${YELLOW}ex01\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c10/ex01/ft_list_push_front.c" ; then
		msg_nothing_turned_in "ex01/ft_list_push_front.c"
		return
	fi
	check_norme "src/c10/ex01/ft_list_push_front.c"
	check_prototype "void" "ft_list_push_front" "src/c10/ex01/ft_list_push_front.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c10/ex01/main.c ./src/c10/ex01/ft_list_push_front.c 
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

function	check_c10_ex02() {
	usr_out=$current_dir/user_output/c10/ex02
	mkdir $usr_out
	printf " ${YELLOW}ex02\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c10/ex02/ft_list_size.c" ; then
		msg_nothing_turned_in "ex02/ft_list_size.c"
		return
	fi
	check_norme "src/c10/ex02/ft_list_size.c"
	check_prototype "void" "ft_list_size" "src/c10/ex02/ft_list_size.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c10/ex02/main.c ./src/c10/ex02/ft_list_size.c 
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

function	check_c10_ex03() {
	usr_out=$current_dir/user_output/c10/ex03
	mkdir $usr_out
	printf " ${YELLOW}ex03\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c10/ex03/ft_list_size.c" ; then
		msg_nothing_turned_in "ex03/ft_list_size.c"
		return
	fi
	check_norme "src/c10/ex03/ft_list_size.c"
	check_prototype "void" "ft_list_size" "src/c10/ex03/ft_list_size.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c10/ex03/main.c ./src/c10/ex03/ft_list_size.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/ft_list_size.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="zyxwvutsrqponmlkjihgfedcba"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex03/ft_list_size.c${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/ft_list_size${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c10() {
	mkdir src/c10 user_output/c10
	print_current_part "c10"
	cp -r $src_path/c10/ex* ./src/c10  # copying src files
	
	//check_c10_ex00
	//check_c10_ex01
	//check_c10_ex02
	//check_c10_ex03
	rm -rf $current_dir/user_output/c10 $current_dir/src/c10
	printf "\n${NOCOLOR}"
	printf "${YELLOW}==============================================="
	printf "${YELLOW}\nType ${NOCOLOR}./gradme.sh ${YELLOW}Below To Run This Tester Again\n${NOCOLOR}"
	printf "${YELLOW}===============================================\n${NOCOLOR}"
	printf "\n\nAll c10 tests are done." >> DEEPTHOUGHT
}
