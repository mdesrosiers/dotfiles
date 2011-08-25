# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set theme
ZSH_THEME="simple"

# Use Vim as an editor
export EDITOR=vim

plugins=(brew bundler gem git osx rake)

source $ZSH/oh-my-zsh.sh

alias ll='ls -lh'
alias l='ls -lah'
alias b='bundle exec'
alias brake='bundle exec rake'

export PATH=$HOME/bin:$PATH

# RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
