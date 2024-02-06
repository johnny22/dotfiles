Create Alias:

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


Clone repository:

git clone --bare https://github.com/johnny22/dotfiles.git $HOME/.dotfiles


Checkout:

config checkout
