# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set theme
ZSH_THEME="simple"

# Use Vim as an editor
export EDITOR=vim

plugins=(brew bundler gem git osx rails3 rake ruby)

source $ZSH/oh-my-zsh.sh

setopt auto_cd
cdpath=($HOME/work)

alias ll='ls -lh'
alias l='ls -lah'
alias b='bundle exec'
alias brake='bundle exec rake'

export PATH=$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin:$PATH

eval "$(rbenv init -)"
