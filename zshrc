# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set theme
ZSH_THEME="simple"

# Use Vim as an editor
export EDITOR=vim

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

plugins=(brew bundler gem git osx rails3 rake ruby)

source $ZSH/oh-my-zsh.sh

setopt auto_cd
cdpath=($HOME/work)

alias ll='ls -lh'
alias l='ls -lah'
alias b='bundle exec'
alias brake='bundle exec rake'
alias bundle="noglob bundle"

# GC tuning for REE
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_FREE_MIN=$RUBY_HEAP_FREE_MIN

export PATH=$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin:$PATH

eval "$(rbenv init -)"
