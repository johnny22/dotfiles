Create Alias:

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


Clone repository:

git clone --bare https://github.com/johnny22/dotfiles.git $HOME/.dotfiles


Checkout:

config checkout


If you want to make commits, this will make status more useable:

config config --local status.showUntrackedFiles no

Idea came from:

https://www.atlassian.com/git/tutorials/dotfiles
