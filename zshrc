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

yarn=~/.config/yarn/global/node_modules/.bin

python3=~/Library/Python/3.6/bin

path=(~/bin $javahome/bin $coreutils $yarn $python3 /usr/local/bin /usr/local/sbin $path)
typeset -U path

source $ZSH/oh-my-zsh.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


# Enable color for ls
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

alias ll='ls -lh'
alias l='ls -lah'
alias bundle="noglob bundle"

# fzf
source /usr/local/opt/fzf/shell/key-bindings.zsh
source /usr/local/opt/fzf/shell/completion.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

