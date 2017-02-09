# VIMRC

## Installation

1. `for i in ~/.vim ~/.vimrc ~/.gvimrc; do [ -e $i ] && mv $i $i.old; done`
2. `git clone git://github.com/ivikash/dotvim.git ~/.vim`
3. `cp ~/.vim/vimrc ~/.vimrc`
4. `mkdir -p ~/.vim/bundle/vundle`
5. `git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle`
6. `vim +'PluginInstall!' +qall`
7. You can thank me now! And contribute

### Note :
1. `In case you are getting errors from Rainbow Parenthesis then disable it from
from the .vimrc before PluginInstall and re-enable it`

2. To use this dotvim with neovim `cp ~/.vim/vimrc ~/.config/nvim/init.vim` after cloning the repo and comment the `viminfo` line.
