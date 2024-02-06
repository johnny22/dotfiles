Create Alias:

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


If on new machine, add this folder to .gitignore:

echo ".cfg" >> .gitignore


Clone repository:

git clone --bare https://github.com/johnny22/dotfiles.git $HOME/.dotfiles


Checkout:

config checkout
