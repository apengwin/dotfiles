#!/bin/bash

# stupid behavior implemented in git 2.16
git config --global pager.branch false

brew bundle install --file Brewfile 

# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -f ~/.zhsrc
ln -s $PWD/zshrc ~/.zshrc

ln -s $PWD/tmux.conf ~/.tmux.conf

# vim
rm -f ~/.vimrc
ln -s $PWD/vimrc ~/.vimrc

# Plugins
export VIM_PLUGIN_DIR=~/.vim/pack/vendor/start
mkdir -p $VIM_PLUGIN_DIR
# CtrlP
(cd $VIM_PLUGIN_DIR && git clone https://github.com/ctrlpvim/ctrlp.vim)
# Airline
(cd $VIM_PLUGIN_DIR && git clone https://github.com/vim-airline/vim-airline)
(cd $VIM_PLUGIN_DIR && git clone https://github.com/vim-airline/vim-airline-themes)
# lint
(cd $VIM_PLUGIN_DIR && git clone https://github.com/w0rp/ale)
# NERDTree
(cd $VIM_PLUGIN_DIR && git clone https://github.com/scrooloose/nerdtree)
(cd $VIM_PLUGIN_DIR && git clone https://github.com/PhilRunninger/nerdtree-buffer-ops)
