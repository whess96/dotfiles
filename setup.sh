#!/bin/sh

# Setup environmental variables
export DOTDIR=$HOME/.dotfiles/

# Setup vim
[ ! -d $DOTDIR"/.vim/undodir" ] && mkdir $DOTDIR"/.vim/undodir"
