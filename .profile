export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export XDG_CONFIG_HOME=~/.config
export PATH=~/.npm-global/bin:$PATH
export ELEVENTY_ENV=development
export MAIN_DISPLAY="eDP"
export SECOND_DISPLAY="DisplayPort-0"

# Private vars
if [[ -e $HOME/.private_profile ]]; then
	source $HOME/.private_profile
fi
