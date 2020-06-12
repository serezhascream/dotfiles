#!/bin/sh
## SET MONITORS CONFIGURATION "only-main" / "only-second" / "both"
mainScreen=eDP1
secondScreen=DP1

case $1 in
# if Only Main screen
	"only-main") xrandr --output "$mainScreen" --auto --primary --scale 1 --pos 0x0 && xrandr --output "$secondScreen" --off ;;
# Else If Only Second screen
	"only-second") xrandr --output "$secondScreen" --primary --pos 0x0 && xrandr --output "$mainScreen" --off ;;
# else if Main and second screen
	"both") xrandr --output "$mainScreen" --primary --auto --scale 1 --below "$secondScreen" --pos 570x2160 && xrandr --output "$secondScreen" --auto --pos 0x0 ;;
esac
