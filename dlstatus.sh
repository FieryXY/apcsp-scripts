 #!/bin/bash

computers=( "dl01" "dl02" "dl03" "dl04" "dl05" "dl06" "dl07" "dl08" "dl09" "dl10" "dl11" );

function queryComputer() {
	ping -c 1 "$1.mpwteach.com" > /dev/null 2>&1;
	if [ $? -eq 0 ] ; then
		echo "$1 is online!";
	else
		echo "$1 not found or is not online"
	fi
}

for var in "$@" ; do
	queryComputer $var;
done

if [ $# -le 0 ] ; then
	for computer in ${computers[@]} ; do
		queryComputer ${computer};
	done
fi
