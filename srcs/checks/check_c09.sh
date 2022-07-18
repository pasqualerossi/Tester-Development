#!/bin/bash

function	check_c09_ex02() {
	usr_out=$current_dir/user_output/c09/ex02
	mkdir $usr_out
	printf " ${YELLOW}ex02\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c09/ex02/ft_list_size.c" ; then
		msg_nothing_turned_in "ex02/ft_list_size.c"
		return
	fi
	check_norme "src/c09/ex02/ft_list_size.c"
	check_prototype "void" "ft_list_size" "src/c09/ex02/ft_list_size.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c09/ex02/main.c ./src/c09/ex02/ft_list_size.c 
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

function	c09() {
	mkdir src/c09 user_output/c09
	print_current_part "c09"
	cp -r $src_path/c09/ex* ./src/c09  # copying src files
	
	//check_c09_ex00
	//check_c09_ex01
	check_c09_ex02
	rm -rf $current_dir/user_output/c09 $current_dir/src/c09
	printf "\n${NOCOLOR}"
	printf "${YELLOW}==============================================="
	printf "${YELLOW}\nType ${NOCOLOR}./gradme.sh ${YELLOW}Below To Run This Tester Again\n${NOCOLOR}"
	printf "${YELLOW}===============================================\n${NOCOLOR}"
	printf "\n\nAll c09 tests are done." >> DEEPTHOUGHT
}
