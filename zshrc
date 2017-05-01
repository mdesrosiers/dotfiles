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

plugins=(brew jsontools git mvn osx tmux)

. `brew --prefix`/etc/profile.d/z.sh

coreutils=$(brew --prefix coreutils)/libexec/gnubin

javahome=/Library/Java/JavaVirtualMachines/Current/Contents/Home

path=(~/bin $javahome/bin $coreutils /usr/local/bin /usr/local/sbin /usr/local/heroku/bin $path)
typeset -U path

source $ZSH/oh-my-zsh.sh

# nvm
# [ -s "/Users/mdesrosiers/.nvm/nvm.sh" ] && . "/Users/mdesrosiers/.nvm/nvm.sh"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


# Enable color for ls
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias ll='ls -lh'
alias l='ls -lah'
alias bundle="noglob bundle"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
