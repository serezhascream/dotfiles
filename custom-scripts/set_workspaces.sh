#!/bin/sh

case $1 in 
	"only-main") bspc monitor eDP -d 1 2 3 4 5 6 7 8 9 0 ;;
	"only-second") bspc monitor DisplayPort-0 -d 1 2 3 4 5 6 7 8 9 0 ;;
	"both") bspc monitor DisplayPort-0  -d 1 2 3 7 8 9 && bspc monitor eDP -d 4 5 6 0 ;;
esac
