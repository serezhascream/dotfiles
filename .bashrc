#
# ~/.bashrc
#

export EDITOR=nvim
[[ $- != *i* ]] && return

# load all files from bash config dir
for f in $HOME/.config/bash/*; do source $f; done

# Load work and home aliases (stored in private repo)
if [[ -e $HOME/.work-aliases ]]; then
	source $HOME/.work-aliases
fi

if [[ -e $HOME/.home-aliases ]]; then
	source $HOME/.home-aliases
fi

if [[ -e /usr/share/nvm/init-nvm.sh ]]; then
	source /usr/share/nvm/init-nvm.sh
fi

if [[ -e /usr/share/doc/pkgfile/command-not-found.bash ]]; then
	source /usr/share/doc/pkgfile/command-not-found.bash
fi

# if command not found it searches this package in an official repos
if [[ -e /usr/share/bash-completion/bash_completion ]]; then
	source /usr/share/bash-completion/bash_completion
fi

use_color=true

unset use_color safe_term match_lhs sh

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

set -o vi
