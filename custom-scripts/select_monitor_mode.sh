#!/bin/bash

onlyMain="Only main screen"
onlyExternal="Only external screen"
both="Both"
options="$onlyMain\n$onlyExternal\n$both"

chosen="$(echo -e "$options"| rofi -p "$1" -dmenu -selected-row 2)"

case $chosen in
	$onlyMain)
		bash -ic 'swtchmd "only-main"' ;;
	$onlyExternal)
		bash -ic 'swtchmd "only-second"' ;;
	$both)
		bash -ic 'swtchmd "both"' ;;
esac
