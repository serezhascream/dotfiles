#!/bin/sh

case $1 in 
	"only-main") bspc monitor eDP1 -d 1 2 3 4 5 6 7 8 9 0 ;;
	"only-second") bspc monitor DP1 -d 1 2 3 4 5 6 7 8 9 0 ;;
	"both") bspc monitor DP1  -d 1 2 3 7 8 9 && bspc monitor eDP1 -d 4 5 6 0 ;;
esac
