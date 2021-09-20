#!/bin/sh
## SET MONITORS CONFIGURATION "only-main" / "only-second" / "both"
mainScreen=eDP
secondScreen=DisplayPort-0

case $1 in
# if Only Main screen
	"only-main") xrandr --output "$mainScreen" --auto --primary --pos 0x0 && xrandr --output "$secondScreen" --off ;;
# Else If Only Second screen
	"only-second") xrandr --output "$secondScreen" --primary --pos 0x0 && xrandr --output "$mainScreen" --off ;;
# else if Main and second screen
	"both") xrandr --output "$mainScreen" --primary --auto --below "$secondScreen" --pos 0x1080 && xrandr --output "$secondScreen" --auto --pos 0x0 ;;
esac
