### ALIASES ###

alias cp="cp -i"                                                                  # confirm before overwriting something
alias df='df -h'                                                                  # human-readable sizes
alias free='free -m'                                                              # show sizes in MB
alias ls="ls --color"
alias lah="ls -lah --group-directories-first"                                     # ls all\with info\human-readable and dirs first

alias swtchmd="sh ~/custom-scripts/switch_mode.sh"                                # switch mode for displays
alias prompt="sh ~/custom-scripts/prompt.sh"                                      # prompt smthng
alias refresh-gestures="libinput-gestures-setup restart"                          # restart libinput gestures
alias dot="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"              # for managing dotfiles 
alias privC="/usr/bin/git --git-dir=$HOME/privateConfigs/ --work-tree=$HOME"      # for managing private configs
alias notes="/usr/bin/git --git-dir=$HOME/notes/ --work-tree=$HOME/Dropbox/Notes" # for managing notes
alias ..="cd .."
alias ~="cd ~"
