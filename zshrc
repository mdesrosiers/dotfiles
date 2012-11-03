# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

TERM=screen-256color
DISABLE_AUTO_TITLE="true"

alias tmux="TERM=screen-256color-bce tmux"

alias mci="mvn clean install"
alias mcp="mvn clean package"
alias mee="mvn eclipse:eclipse"

# Set theme
ZSH_THEME="simple"

plugins=(autojump brew bundler gem git github mvn osx rails3 rake ruby)

coreutils=$(brew --prefix coreutils)/libexec/gnubin

path=(~/bin $coreutils /usr/local/bin $path)
typeset -U path

source $ZSH/oh-my-zsh.sh

# Enable color for ls
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias ll='ls -lh'
alias l='ls -lah'
alias bundle="noglob bundle"

eval "$(rbenv init -)"
