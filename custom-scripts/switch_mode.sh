#!/bin/sh

sh ~/custom-scripts/set_workspaces.sh "$1" && ./custom-scripts/load_polybar.sh "$1" &
