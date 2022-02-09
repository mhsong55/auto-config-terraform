#!/bin/bash

function get_current_shell() {
	# input parameter
	local current_user=$1
	local current_shell=`grep $current_user /etc/passwd`
	echo "현재 사용자 $current_user의 SHELL"
	echo "$current_shell"
}

get_current_shell mhsong
