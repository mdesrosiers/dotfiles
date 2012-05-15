# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

TERM=screen-256color
DISABLE_AUTO_TITLE="true"

alias tmux="TERM=screen-256color-bce tmux"

# Set theme
ZSH_THEME="simple"

plugins=(autojump brew bundler gem git osx rails3 rake ruby)

coreutils=$(brew --prefix coreutils)/libexec/gnubin
postgresql=/Applications/Postgres.app/Contents/MacOS/bin

path=(~/bin $coreutils $postgresql /usr/local/bin $path)
typeset -U path

source $ZSH/oh-my-zsh.sh

# Enable color for ls
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias ll='ls -lh'
alias l='ls -lah'
alias bundle="noglob bundle"

eval "$(rbenv init -)"
