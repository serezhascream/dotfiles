#!/bin/bash

onlyMain="Only main screen"
onlyExternal="Only external screen"
both="Both"
options="$onlyMain\n$onlyExternal\n$both"

chosen="$(echo -e "$options"| rofi  -theme $HOME/.config/rofi/nord.rasi -font "Hack 16" -p "$1" -dmenu -selected-row 2)"

case $chosen in
	$onlyMain)
		xrandr --output eDP --auto --output DisplayPort-0 --off && bash -ic 'swtchmd "only-main"' ;;
	$onlyExternal)
		xrandr --output DisplayPort-0 --auto --output eDP --off && bash -ic 'swtchmd "only-second"' ;;
	$both)
		xrandr --output DisplayPort-0 --auto --output eDP --auto && bash -ic 'swtchmd "both"' ;;
esac
