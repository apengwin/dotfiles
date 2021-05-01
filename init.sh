#!/bin/bash

set -eou pipefail

# stupid behavior implemented in git 2.16
git config --global pager.branch false

brew bundle install --file Brewfile 

# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -f ~/.zhsrc
ln -s $PWD/zshrc ~/.zshrc

(cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions)

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
# fzf.vim
git clone https://github.com/junegunn/fzf.vim.git
# Airline
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
# lint
git clone https://github.com/w0rp/ale
# NERDTree
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/PhilRunninger/nerdtree-buffer-ops
# NERDCommenter
git clone https://github.com/preservim/nerdcommenter.git
