#!/bin/sh

killall polybar

case $1 in
	"only-main") polybar main --reload & ;;
	"only-second") polybar second --reload & ;;
	"both") polybar main --reload & polybar second --reload & ;;
esac
