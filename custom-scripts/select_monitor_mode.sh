#!/bin/bash

onlyMain="Only main screen"
onlyExternal="Only external screen"
both="Both"
options="$onlyMain\n$onlyExternal\n$both"

chosen="$(echo -e "$options"| rofi -p "$1" -dmenu -selected-row 2)"

case $chosen in
	$onlyMain)
		xrandr --output eDP1 --auto --output DP1 --off && bash -ic 'swtchmd "only-main"' ;;
	$onlyExternal)
		xrandr --output DP1 --auto --output eDP1 --off && bash -ic 'swtchmd "only-second"' ;;
	$both)
		xrandr --output DP1 --auto --output eDP1 --auto && bash -ic 'swtchmd "both"' ;;
esac
