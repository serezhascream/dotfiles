### ALIASES ###

alias ..="cd .."
alias ~="cd ~"
alias cp="cp -i" # confirm before overwriting something
alias df='df -h' # human-readable sizes
alias free='free -m' # show sizes in MB
alias ls="ls --color" # colorized ls
alias lah="ls -lAh --group-directories-first" # ls all\with info\human-readable and dirs first
alias locate="plocate" # locates file by it's name
alias grep="grep --color"
alias vim="nvim"
alias howmanynotes="ls ./*.md|wc -l"
alias arestovich="rm -rf node_modules/ && npm i" # for arestoviching modules

alias swtchmd="sh ~/custom-scripts/switch_mode.sh" # switch mode for displays
alias prompt="sh ~/custom-scripts/prompt.sh" # prompt smthng
alias dot="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME" # for managing dotfiles 
alias privC="/usr/bin/git --git-dir=$HOME/privateConfigs/ --work-tree=$HOME" # for managing private configs
alias pullnotes="rclone sync dropbox:notes ~/notes" # pull notes from dropbox
alias pushnotes="rclone sync ~/notes dropbox:notes" # push notes to dropbox
