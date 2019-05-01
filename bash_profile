. ~/.bash_aliases

EDITOR=vim

# Prompt
export PS1="\[\e]2;\u@\H \a\e[32;1m\]\w>\[\e[0m\] "

# Java
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/Current"
export JAVA_VERSION=1.8

# Maven
export MAVEN_HOME="/usr/local/maven"
export MAVEN_OPTS="-Xmx1024m"
export M2_REPO="$HOME/.m2/repository"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# update PATH to include personal bin if it exists
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

source ~/.bashrc
