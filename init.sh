#!/bin/bash

set -eou pipefail

# stupid behavior implemented in git 2.16
git config --global pager.branch false
git config --global --replace-all core.pager "less -F"


if [ "$(uname)" == "Darwin" ]; then
  brew bundle install --file Brewfile
fi

# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -f ~/.zhsrc
ln -s $PWD/zshrc ~/.zshrc

# tmux
rm -f ~/.tmux.conf
ln -s $PWD/tmux.conf ~/.tmux.conf

# vim
rm -f ~/.vimrc
ln -s $PWD/vimrc ~/.vimrc

# Plugins
export VIM_PLUGIN_DIR=~/.vim/pack/vendor/start
mkdir -p $VIM_PLUGIN_DIR
cd $VIM_PLUGIN_DIR
# CtrlP
git clone https://github.com/ctrlpvim/ctrlp.vim
# Airline
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
# lint
git clone https://github.com/w0rp/ale
# NERDTree
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/PhilRunninger/nerdtree-buffer-ops
