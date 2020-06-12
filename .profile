export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export XDG_CONFIG_HOME=$HOME/.config

# Private vars
if [[ -e $HOME/.private_profile ]]; then
	source $HOME/.private_profile
fi
