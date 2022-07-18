#!/bin/bash

function	check_c13_ex00() {
	usr_out=$current_dir/user_output/c13/ex00
	mkdir $usr_out
	printf " ${YELLOW}ex00\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex00/btree_create_node.c" ; then
		msg_nothing_turned_in "ex00/btree_create_node.c"
		return
	fi
#	PROTOTYPE=$(grep -E "^$TYPE"$'\t{1,}'"$FUNC_NAME"'\([^)]+\)' src/c13/ex00/btree_create_node.c)
	check_norme "src/c13/ex00/btree_create_node.c"
	check_prototype "void" "btree_create_node" "src/c13/ex00/btree_create_node.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex00/main.c ./src/c13/ex00/btree_create_node.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex00/btree_create_node.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES=" !\"#\$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex00/btree_create_node.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex00/btree_create_node.c\t\t${diff_ok}${NOCOLOR}\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c13_ex01() {
	usr_out=$current_dir/user_output/c13/ex01
	mkdir $usr_out
	printf " ${YELLOW}ex01\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex01/btree_apply_prefix.c" ; then
		msg_nothing_turned_in "ex01/btree_apply_prefix.c"
		return
	fi
	check_norme "src/c13/ex01/btree_apply_prefix.c"
	check_prototype "void" "btree_apply_prefix" "src/c13/ex01/btree_apply_prefix.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex01/main.c ./src/c13/ex01/btree_apply_prefix.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex01/btree_apply_prefix.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="abcdefghijklmnopqrstuvwxyz"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex01/btree_apply_prefix.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex01/btree_apply_prefix\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c13_ex02() {
	usr_out=$current_dir/user_output/c13/ex02
	mkdir $usr_out
	printf " ${YELLOW}ex02\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex02/btree_apply_infix.c" ; then
		msg_nothing_turned_in "ex02/btree_apply_infix.c"
		return
	fi
	check_norme "src/c13/ex02/btree_apply_infix.c"
	check_prototype "void" "btree_apply_infix" "src/c13/ex02/btree_apply_infix.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex02/main.c ./src/c13/ex02/btree_apply_infix.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex02/btree_apply_infix.c${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="zyxwvutsrqponmlkjihgfedcba"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex02/btree_apply_infix.c${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex02/btree_apply_infix${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c13_ex03() {
	usr_out=$current_dir/user_output/c13/ex03
	mkdir $usr_out
	printf " ${YELLOW}ex03\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex03/btree_apply_suffix.c" ; then
		msg_nothing_turned_in "ex03/btree_apply_suffix.c"
		return
	fi
	check_norme "src/c13/ex03/btree_apply_suffix.c"
	check_prototype "void" "btree_apply_suffix" "src/c13/ex03/btree_apply_suffix.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex03/main.c ./src/c13/ex03/btree_apply_suffix.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex03/btree_apply_suffix.c\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="0123456789"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex03/btree_apply_suffix.c\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex03/btree_apply_suffix\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c13_ex04() {
	usr_out=$current_dir/user_output/c13/ex04
	mkdir $usr_out
	printf " ${YELLOW}ex04\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex04/btree_insert_data.c" ; then
		msg_nothing_turned_in "ex04/btree_insert_data.c"
		return
	fi
	check_norme "src/c13/ex04/btree_insert_data.c"
	check_prototype "void" "btree_insert_data" "src/c13/ex04/btree_insert_data.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex04/main.c ./src/c13/ex04/btree_insert_data.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex04/btree_insert_data.c\t${diff_ko}${NOCOLOR}\n"
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
			printf "${uni_success}ex04/btree_insert_data.c\t${diff_ok}${NOCOLOR}\n\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		elif [ "$USER_OUTPUT" == "N" ] && [ ${NUMBER[i]} -lt 0 ] ; then
			printf "${uni_success}ex04/btree_insert_data.c\t${diff_ok}${NOCOLOR}\n\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex04/btree_insert_data.c\t${diff_ko}${NOCOLOR}\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((i++))
	done	
	cd $current_dir
}

function	check_c13_ex05() {
	usr_out=$current_dir/user_output/c13/ex05
	mkdir $usr_out
	printf " ${YELLOW}ex05\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex05/btree_search_item.c" ; then
		msg_nothing_turned_in "ex05/btree_search_item.c"
		return
	fi
	check_norme "src/c13/ex05/btree_search_item.c"
	check_prototype "void" "btree_search_item" "src/c13/ex05/btree_search_item.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex05/main.c ./src/c13/ex05/btree_search_item.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex05/btree_search_item.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	local RES="012, 013, 014, 015, 016, 017, 018, 019, 023, 024, 025, 026, 027, 028, 029, 034, 035, 036, 037, 038, 039, 045, 046, 047, 048, 049, 056, 057, 058, 059, 067, 068, 069, 078, 079, 089, 123, 124, 125, 126, 127, 128, 129, 134, 135, 136, 137, 138, 139, 145, 146, 147, 148, 149, 156, 157, 158, 159, 167, 168, 169, 178, 179, 189, 234, 235, 236, 237, 238, 239, 245, 246, 247, 248, 249, 256, 257, 258, 259, 267, 268, 269, 278, 279, 289, 345, 346, 347, 348, 349, 356, 357, 358, 359, 367, 368, 369, 378, 379, 389, 456, 457, 458, 459, 467, 468, 469, 478, 479, 489, 567, 568, 569, 578, 579, 589, 678, 679, 689, 789"
	cd $usr_out
	local USER_OUTPUT=$(./user.out)
	if [ "$RES" != "$USER_OUTPUT" ]; then
		printf "${uni_fail}ex05/btree_search_item.c\t\t${diff_ko}${NOCOLOR}\n"
		diff <(echo $RES) <(echo $USER_OUTPUT) >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex05/btree_search_item\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c13_ex06() {
	usr_out=$current_dir/user_output/c13/ex06
	mkdir $usr_out
	printf " ${YELLOW}ex06\n${NOCOLOR}"
	printf "= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex06/btree_level_count.c" ; then
		msg_nothing_turned_in "ex06/btree_level_count.c"
		return
	fi
	check_norme "src/c13/ex06/btree_level_count.c"
	check_prototype "void" "btree_level_count" "src/c13/ex06/btree_level_count.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex06/main.c ./src/c13/ex06/btree_level_count.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/btree_level_count.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c13/ex06/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex06/btree_level_count.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex06/btree_level_count\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c13_ex07() {
	usr_out=$current_dir/user_output/c13/ex07
	mkdir $usr_out
	printf " ${YELLOW}ex07\n${NOCOLOR}"
	printf "= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c13/ex07/btree_apply_by_level.c" ; then
		msg_nothing_turned_in "ex07/btree_apply_by_level.c"
		return
	fi
	check_norme "src/c13/ex07/btree_apply_by_level.c"
	check_prototype "void" "btree_apply_by_level" "src/c13/ex07/btree_apply_by_level.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c13/ex07/main.c ./src/c13/ex07/btree_apply_by_level.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex07/btree_apply_by_level.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	local NUMBER=(42 2147483647 1337 -42 -2147483647 -1337 6473287 -328 612567)
	local i=0
	while [ $i -le 8 ]
	do
		local USER_OUTPUT=$(./user.out ${NUMBER[$i]})
		printf "> test $i with nb=${NUMBER[i]}\n" >> $current_dir/DEEPTHOUGHT
		if [ "$USER_OUTPUT" == "${NUMBER[i]}" ] ; then
			printf "${uni_success}ex07/btree_apply_by_level.c\t\t${diff_ok}${NOCOLOR}\n\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex07/btree_apply_by_level.c\t\t${diff_ko}${NOCOLOR}\n\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((i++))
	done	
	cd $current_dir
}

function	c13() {
	mkdir src/c13 user_output/c13
	print_current_part "c13"
	cp -r $src_path/c13/ex* ./src/c13  # copying src files
	
	check_c13_ex00
	check_c13_ex01
	check_c13_ex02
	check_c13_ex03
	check_c13_ex04
	check_c13_ex05
	check_c13_ex06
	check_c13_ex07
	rm -rf $current_dir/user_output/c13 $current_dir/src/c13
	printf "\n${NOCOLOR}"
	printf "${YELLOW}==============================================="
	printf "${YELLOW}\nType ${NOCOLOR}./gradme.sh ${YELLOW}Below To Run This Tester Again\n${NOCOLOR}"
	printf "${YELLOW}===============================================\n${NOCOLOR}"
	printf "\n\nAll c13 tests are done." >> DEEPTHOUGHT
}
