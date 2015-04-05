#!/bin/bash

# user
RUN_USER=nd

usage () {
	echo "Use one of this arguments: step1, step2, step3, all"
}

step1 () {
	echo "Run step1 of install"
	./step1.sh
}

step2 () {
	echo "Run step2 of install"
	./step2.sh $RUN_USER
}

step3 () {
	echo "Run step3 of install"
	./step3.sh
}

all () {
	step1
	step2
	step3
}


if [ $1 == "step1" ]; then
	step1
elif [ $1 == "step2" ]; then
	step2
elif [ $1 == "step3" ]; then
	step3
elif [ $1 == "all" ]; then
	all
else
	usage
fi