#!/bin/bash

function	clean_before_launch() {
	if [ -e src ] ; then
		rm -rf src
	fi
	if [ -e user_output ] ; then
		rm -rf user_output
	fi
	if [ -e DEEPTHOUGHT ] ; then
		rm -f DEEPTHOUGHT
	fi
}

function	init() {
	clean_before_launch
	mkdir src user_output
# USER_NAME=gpatingr # so that i dont have to rewrite everytime
#	ask_username    # should ask only for sh00
	deepthought_init
}

function	deepthought_init() {
	printf "\$> hostname; uname -msr\n" > DEEPTHOUGHT
	hostname >> DEEPTHOUGHT ; uname -msr >> DEEPTHOUGHT
	printf "\$> date\n" >> DEEPTHOUGHT
	date >> DEEPTHOUGHT
	printf "\$> gcc --version\n" >> DEEPTHOUGHT
	gcc --version | grep -e "gcc" >> DEEPTHOUGHT 2> /dev/null
	printf "\$> clang --version\n" >> DEEPTHOUGHT
	clang --version >> DEEPTHOUGHT 2>  /dev/null
	printf "\$> echo \$USER_NAME\n" >> DEEPTHOUGHT
	echo $USER_NAME >> DEEPTHOUGHT
	printf "\nReady for testing\n\n" >> DEEPTHOUGHT
}
