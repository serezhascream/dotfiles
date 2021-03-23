export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export XDG_CONFIG_HOME=$HOME/.config
export PATH=~/.npm-global/bin:$PATH
export ELEVENTY_ENV=development

# Private vars
if [[ -e $HOME/.private_profile ]]; then
	source $HOME/.private_profile
fi
