#!/bin/sh

# Helper functions
dir_exists() {
    [ -d "$@" ]
}
# Setup environmental variables
export DOTDIR=$HOME/.dotfiles

# Setup vim
[ ! -d $DOTDIR"/.vim/undodir" ] && mkdir $DOTDIR"/.vim/undodir"
[ ! -L $HOME"/.vimrc" ] && ln -sv $DOTDIR"/.vim/vimrc" $HOME"/.vimrc"

# Setup zsh
omz=$HOME/.oh-my-zsh
zsh_custom=$omz/custom
dir_exists $omz || git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
dir_exists $zsh_custom/themes/powerlevel10k ||  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $zsh_custom/themes/powerlevel10k
dir_exists $zsh_custom/plugins/zsh-autosuggestions || git clone https://github.com/zsh-users/zsh-autosuggestions $zsh_custom/plugins/zsh-autosuggestions
dir_exists $zsh_custom/plugins/zsh-syntax-highlighting ||  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $zsh_custom/plugins/zsh-syntax-highlighting
[ ! -L $HOME"/.zshrc" ] && ln -sv $DOTDIR"/.zsh/.zshrc" $HOME"/.zshrc"

# Start a new zsh session
exec zsh
