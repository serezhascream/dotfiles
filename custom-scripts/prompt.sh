#!/bin/bash

ok="Yes"
no="Cancel"
buttons="$ok\n$no"
theme="~/.config/rofi/nord.rasi"

chosen="$(echo -e "$buttons"| rofi -p "$1" -theme ~/.config/rofi/prompt.rasi -dmenu -selected-row 2)"

case $chosen in
	$ok)
		exec $2 ;;
	$no)
		echo "oh no!" ;;
esac
