#!/bin/sh

# Setup environmental variables
export DOTDIR=$HOME/.dotfiles

# Setup vim
[ ! -d $DOTDIR"/.vim/undodir" ] && mkdir $DOTDIR"/.vim/undodir"
[ ! -L $HOME"/.vimrc" ] && ln -sv $DOTDIR"/.vim/vimrc" $HOME"/.vimrc"

# Setup zsh
[ ! -d $HOME"/.oh-my-zsh" ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[ ! -L $HOME"/.zshrc" ] && ln -sv $DOTDIR"/.zsh/.zshrc" $HOME"/.zshrc"

. $HOME/.zshrc
