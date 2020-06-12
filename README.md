# To move to a new system:
1. Clone repo:
`git clone --bare https://github.com/serezhascream/dotfiles.git $HOME/dotfiles`
2. Define the alias in the current shell scope
`alias dot='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'`
3. Checkout the actual content from the git repository to $HOME
`dotfiles checkout`
4. If needed, copy xserver config files from xorg.conf.d to /etc/X11/xorg.conf.d/
