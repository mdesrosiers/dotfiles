# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set theme
ZSH_THEME="robbyrussell"

# Use Vim as an editor
export EDITOR=vim

plugins=(brew bundler gem git osx rake)

source $ZSH/oh-my-zsh.sh

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
