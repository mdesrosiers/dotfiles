alias l='ls -l'
alias ll='ls -al'

alias psg='ps auwwwx | grep $1'

#Maven
alias mcc='mvn clean compile'
alias mcd='mvn clean deploy'
alias mci='mvn clean install'
alias mcist='mci -Dmaven.test.skip=true'
alias mcp='mvn clean package'
alias mcpst='mcp -Dmaven.test.skip=true'
alias mct='mvn clean test'
alias mda='mvn dependency:analyze'
alias mdt='mvn dependency:tree'
alias mjr='mvn jetty:run'
alias mee='mvn eclipse:clean eclipse:eclipse -DdownloadSources=true -DdownloadJavadocs=true'
alias msr='mvn site:run'

#Git
alias gca="git commit -all"
alias gbl="git branch -l"
alias gdc="git diff --cached"
alias gsl="git stash list"

#Ruby
alias rls="rails server"
alias rta="rake test"
alias rtu="rake test:units"
alias rtf="rake test:functionals"
alias rti="rake test:integration"
alias rdm="rake db:migrate"
alias rds="rake db:seed"
alias bdi="bundle install"
alias rspec="rspec --colour"
