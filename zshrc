# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

TERM=screen-256color
DISABLE_AUTO_TITLE="true"

alias tmux="TERM=screen-256color-bce tmux"

alias mci="mvn clean install"
alias mcist="mvn clean install -Dmaven.test.skip=true"
alias mci="mvn clean install"
alias mcp="mvn clean package"
alias mcpst="mvn clean package -Dmaven.test.skip=true"
alias mct="mvn clean test"
alias mdt="mvn dependency:tree"
alias mee="mvn eclipse:eclipse -DdownloadSources=true -DdownloadJavadocs=true"
#alias -g st="-Dmaven.test.skip=true"

# Set theme
ZSH_THEME="simple"

plugins=(brew gem git github mvn osx)

. `brew --prefix`/etc/profile.d/z.sh

[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

coreutils=$(brew --prefix coreutils)/libexec/gnubin

path=(~/bin $coreutils /usr/local/bin /usr/local/sbin $path)
typeset -U path

source $ZSH/oh-my-zsh.sh

# Enable color for ls
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias ll='ls -lh'
alias l='ls -lah'
alias bundle="noglob bundle"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/mdesrosiers/.gvm/bin/gvm-init.sh" ]] && source "/Users/mdesrosiers/.gvm/bin/gvm-init.sh"
