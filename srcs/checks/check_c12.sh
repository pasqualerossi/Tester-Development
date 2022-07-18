#!/bin/bash

function	check_c12_ex00() {
	usr_out=$current_dir/user_output/c12/ex00
	mkdir $usr_out
	printf " ${YELLOW}ex00\n${NOCOLOR}"
	printf "= ex00 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex00/ft_create_elem.c" ; then
		msg_nothing_turned_in "ex00/ft_create_elem.c"
		return
	fi
#	PROTOTYPE=$(grep -E "^$TYPE"$'\t{1,}'"$FUNC_NAME"'\([^)]+\)' src/c12/ex00/ft_create_elem.c)
	check_norme "src/c12/ex00/ft_create_elem.c"
	check_prototype "void" "ft_create_elem" "src/c12/ex00/ft_create_elem.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex00/main.c ./src/c12/ex00/ft_create_elem.c 
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

function	check_c12_ex01() {
	usr_out=$current_dir/user_output/c12/ex01
	mkdir $usr_out
	printf " ${YELLOW}ex01\n${NOCOLOR}"
	printf "= ex01 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex01/ft_list_push_front.c" ; then
		msg_nothing_turned_in "ex01/ft_list_push_front.c"
		return
	fi
	check_norme "src/c12/ex01/ft_list_push_front.c"
	check_prototype "void" "ft_list_push_front" "src/c12/ex01/ft_list_push_front.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex01/main.c ./src/c12/ex01/ft_list_push_front.c 
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

function	check_c12_ex02() {
	usr_out=$current_dir/user_output/c12/ex02
	mkdir $usr_out
	printf " ${YELLOW}ex02\n${NOCOLOR}"
	printf "= ex02 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex02/ft_list_size.c" ; then
		msg_nothing_turned_in "ex02/ft_list_size.c"
		return
	fi
	check_norme "src/c12/ex02/ft_list_size.c"
	check_prototype "void" "ft_list_size" "src/c12/ex02/ft_list_size.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex02/main.c ./src/c12/ex02/ft_list_size.c 
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

function	check_c12_ex03() {
	usr_out=$current_dir/user_output/c12/ex03
	mkdir $usr_out
	printf " ${YELLOW}ex03\n${NOCOLOR}"
	printf "= ex03 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex03/ft_list_last.c" ; then
		msg_nothing_turned_in "ex03/ft_list_last.c"
		return
	fi
	check_norme "src/c12/ex03/ft_list_last.c"
	check_prototype "void" "ft_list_last" "src/c12/ex03/ft_list_last.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex03/main.c ./src/c12/ex03/ft_list_last.c 
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

function	check_c12_ex04() {
	usr_out=$current_dir/user_output/c12/ex04
	mkdir $usr_out
	printf " ${YELLOW}ex04\n${NOCOLOR}"
	printf "= ex04 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex04/ft_list_push_back.c" ; then
		msg_nothing_turned_in "ex04/ft_list_push_back.c"
		return
	fi
	check_norme "src/c12/ex04/ft_list_push_back.c"
	check_prototype "void" "ft_list_push_back" "src/c12/ex04/ft_list_push_back.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex04/main.c ./src/c12/ex04/ft_list_push_back.c 
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

function	check_c12_ex05() {
	usr_out=$current_dir/user_output/c12/ex05
	mkdir $usr_out
	printf " ${YELLOW}ex05\n${NOCOLOR}"
	printf "= ex05 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex05/ft_list_push_strs.c" ; then
		msg_nothing_turned_in "ex05/ft_list_push_strs.c"
		return
	fi
	check_norme "src/c12/ex05/ft_list_push_strs.c"
	check_prototype "void" "ft_list_push_strs" "src/c12/ex05/ft_list_push_strs.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex05/main.c ./src/c12/ex05/ft_list_push_strs.c 
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

function	check_c12_ex06() {
	usr_out=$current_dir/user_output/c12/ex06
	mkdir $usr_out
	printf " ${YELLOW}ex06\n${NOCOLOR}"
	printf "= ex06 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex06/ft_list_clear.c" ; then
		msg_nothing_turned_in "ex06/ft_list_clear.c"
		return
	fi
	check_norme "src/c12/ex06/ft_list_clear.c"
	check_prototype "void" "ft_list_clear" "src/c12/ex06/ft_list_clear.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex06/main.c ./src/c12/ex06/ft_list_clear.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_list_clear.c\t\t${diff_ko}${NOCOLOR}\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex06/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex06/ft_list_clear.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex06/ft_list_clear\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex07() {
	usr_out=$current_dir/user_output/c12/ex07
	mkdir $usr_out
	printf " ${YELLOW}ex07\n${NOCOLOR}"
	printf "= ex07 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex07/ft_list_at.c" ; then
		msg_nothing_turned_in "ex07/ft_list_at.c"
		return
	fi
	check_norme "src/c12/ex07/ft_list_at.c"
	check_prototype "void" "ft_list_at" "src/c12/ex07/ft_list_at.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex07/main.c ./src/c12/ex07/ft_list_at.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex07/ft_list_at.c\t\t${diff_ko}${NOCOLOR}\n\n"
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
			printf "${uni_success}ex07/ft_list_at.c\t\t${diff_ok}${NOCOLOR}\n\n"
			printf "diff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
		else
			printf "${uni_fail}ex07/ft_list_at.c\t\t${diff_ko}${NOCOLOR}\n\n"
			printf "$USER_OUTPUT\n"
			printf "diff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
		fi
		((i++))
	done	
	cd $current_dir
}

function	check_c12_ex08() {
	usr_out=$current_dir/user_output/c12/ex08
	mkdir $usr_out
	printf " ${YELLOW}ex08\n${NOCOLOR}"
	printf "= ex08 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex08/ft_list_reserve.c" ; then
		msg_nothing_turned_in "ex08/ft_list_reserve.c"
		return
	fi
	check_norme "src/c12/ex08/ft_list_reserve.c"
	check_prototype "void" "ft_list_reserve" "src/c12/ex08/ft_list_reserve.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex08/main.c ./src/c12/ex08/ft_list_reserve.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_list_reserve.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex08/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex08/ft_list_reserve.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex08/ft_list_reserve\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex09() {
	usr_out=$current_dir/user_output/c12/ex09
	mkdir $usr_out
	printf " ${YELLOW}ex09\n${NOCOLOR}"
	printf "= ex09 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex09/ft_list_foreach.c" ; then
		msg_nothing_turned_in "ex09/ft_list_foreach.c"
		return
	fi
	check_norme "src/c12/ex09/ft_list_foreach.c"
	check_prototype "void" "ft_list_foreach" "src/c12/ex09/ft_list_foreach.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex09/main.c ./src/c12/ex09/ft_list_foreach.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex09/ft_list_foreach.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex09/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex09/ft_list_foreach.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex09/ft_list_foreach\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex10() {
	usr_out=$current_dir/user_output/c12/ex10
	mkdir $usr_out
	printf " ${YELLOW}ex10\n${NOCOLOR}"
	printf "= ex10 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex10/ft_list_foreach_if.c" ; then
		msg_nothing_turned_in "ex10/ft_list_foreach_if.c"
		return
	fi
	check_norme "src/c12/ex10/ft_list_foreach_if.c"
	check_prototype "void" "ft_list_foreach_if" "src/c12/ex10/ft_list_foreach_if.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex10/main.c ./src/c12/ex10/ft_list_foreach_if.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex10/ft_list_foreach_if.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex10/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex10/ft_list_foreach_if.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex10/ft_list_foreach_if\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex11() {
	usr_out=$current_dir/user_output/c12/ex11
	mkdir $usr_out
	printf " ${YELLOW}ex11\n${NOCOLOR}"
	printf "= ex11 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex11/ft_list_find.c" ; then
		msg_nothing_turned_in "ex11/ft_list_find.c"
		return
	fi
	check_norme "src/c12/ex11/ft_list_find.c"
	check_prototype "void" "ft_list_find" "src/c12/ex11/ft_list_find.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex11/main.c ./src/c12/ex11/ft_list_find.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex11/ft_list_find.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex11/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex11/ft_list_find.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex11/ft_list_find\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex12() {
	usr_out=$current_dir/user_output/c12/ex12
	mkdir $usr_out
	printf " ${YELLOW}ex12\n${NOCOLOR}"
	printf "= ex12 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex12/ft_list_remove_if.c" ; then
		msg_nothing_turned_in "ex12/ft_list_remove_if.c"
		return
	fi
	check_norme "src/c12/ex12/ft_list_remove_if.c"
	check_prototype "void" "ft_list_remove_if" "src/c12/ex12/ft_list_remove_if.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex12/main.c ./src/c12/ex12/ft_list_remove_if.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_list_remove_if.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex12/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex12/ft_list_remove_if.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex12/ft_list_remove_if\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex13() {
	usr_out=$current_dir/user_output/c12/ex13
	mkdir $usr_out
	printf " ${YELLOW}ex13\n${NOCOLOR}"
	printf "= ex13 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex13/ft_list_merge.c" ; then
		msg_nothing_turned_in "ex13/ft_list_merge.c"
		return
	fi
	check_norme "src/c12/ex13/ft_list_merge.c"
	check_prototype "void" "ft_list_merge" "src/c12/ex13/ft_list_merge.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex13/main.c ./src/c12/ex13/ft_list_merge.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_list_merge.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex13/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex13/ft_list_merge.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex13/ft_list_merge\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex14() {
	usr_out=$current_dir/user_output/c12/ex14
	mkdir $usr_out
	printf " ${YELLOW}ex14\n${NOCOLOR}"
	printf "= ex14 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex14/ft_list_sort.c" ; then
		msg_nothing_turned_in "ft_list_sort.c"
		return
	fi
	check_norme "src/c12/ex14/ft_list_sort.c"
	check_prototype "void" "ft_list_sort" "src/c12/ex14/ft_list_sort.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex14/main.c ./src/c12/ex14/ft_list_sort.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_list_sort.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex14/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex14/ft_list_sort.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex14/ft_list_sort\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex15() {
	usr_out=$current_dir/user_output/c12/ex15
	mkdir $usr_out
	printf " ${YELLOW}ex15\n${NOCOLOR}"
	printf "= ex15 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex15/ft_list_reverse_fun.c" ; then
		msg_nothing_turned_in "ex15/ft_list_reverse_fun.c"
		return
	fi
	check_norme "src/c12/ex15/ft_list_reverse_fun.c"
	check_prototype "void" "ft_list_reverse_fun" "src/c12/ex15/ft_list_reverse_fun.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex15/main.c ./src/c12/ex15/ft_list_reverse_fun.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex15/ft_list_reverse_fun.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex15/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex15/ft_list_reverse_fun.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex15/ft_list_reverse_fun\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex16() {
	usr_out=$current_dir/user_output/c12/ex16
	mkdir $usr_out
	printf " ${YELLOW}ex16\n${NOCOLOR}"
	printf "= ex16 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex16/ft_sorted_list_insert.c" ; then
		msg_nothing_turned_in "ex16/ft_sorted_list_insert.c"
		return
	fi
	check_norme "src/c12/ex16/ft_sorted_list_insert.c"
	check_prototype "void" "ft_sorted_list_insert" "src/c12/ex16/ft_sorted_list_insert.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex16/main.c ./src/c12/ex16/ft_sorted_list_insert.c 
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex16/ft_sorted_list_insert.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex16/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex16/ft_sorted_list_insert.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex16/ft_sorted_list_insert\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	check_c12_ex17() {
	usr_out=$current_dir/user_output/c12/ex17
	mkdir $usr_out
	printf " ${YELLOW}ex17\n${NOCOLOR}"
	printf "= ex17 =\n==========================================\n" >> DEEPTHOUGHT
	if ! file_exists "src/c12/ex17/ft_sorted_list_merge.c" ; then
		msg_nothing_turned_in "ex17/ft_sorted_list_merge.c"
		return
	fi
	check_norme "src/c12/ex17/ft_sorted_list_merge.c"
	check_prototype "void" "ft_sorted_list_merge" "src/c12/ex17/ft_sorted_list_merge.c"
	if [ "$NORME" != "0" ] ; then
		return
	fi
	compile_tests ./tests/c12/ex17/main.c ./src/c12/ex17/ft_sorted_list_merge.c
	if [ "$IS_COMPILED" != "0" ] ; then
		printf "${uni_fail}ex06/ft_sorted_list_merge.c\t\t${diff_ko}${NOCOLOR}\n\n"
		printf "\ndiff ko :(\n\n" >> DEEPTHOUGHT
		return
	fi
	cd $usr_out
	./user.out > res.out
	DIFF=$(diff res.out $current_dir/tests/c12/ex17/comb_res)
	if [ "$DIFF" != "" ]; then
		printf "${uni_fail}ex17/ft_sorted_list_merge.c\t\t${diff_ko}${NOCOLOR}\n\n"
		echo $DIFF >> $current_dir/DEEPTHOUGHT
		printf "\ndiff ko :(\n\n" >> $current_dir/DEEPTHOUGHT
	else
		printf "${uni_success}ex17/ft_sorted_list_merge\t\t${diff_ok}${NOCOLOR}\n\n"
		printf "\ndiff ok :D\n\n" >> $current_dir/DEEPTHOUGHT
	fi
	cd $current_dir
}

function	c12() {
	mkdir src/c12 user_output/c12
	print_current_part "c12"
	cp -r $src_path/c12/ex* ./src/c12  # copying src files
	
	check_c12_ex00
	check_c12_ex01
	check_c12_ex02
	check_c12_ex03
	check_c12_ex04
	check_c12_ex05
	check_c12_ex06
	check_c12_ex07
	check_c12_ex08
	check_c12_ex09
	check_c12_ex10
	check_c12_ex11
	check_c12_ex12
	check_c12_ex13
	check_c12_ex14
	check_c12_ex15
	check_c12_ex16
	check_c12_ex17
	rm -rf $current_dir/user_output/c12 $current_dir/src/c12
	printf "\n${NOCOLOR}"
	printf "${YELLOW}==============================================="
	printf "${YELLOW}\nType ${NOCOLOR}./gradme.sh ${YELLOW}Below To Run This Tester Again\n${NOCOLOR}"
	printf "${YELLOW}===============================================\n${NOCOLOR}"
	printf "\n\nAll c12 tests are done." >> DEEPTHOUGHT
}
