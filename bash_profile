#!/bin/bash

. ~/.bash_aliases

EDITOR=vim

# Prompt
export PS1="\[\e]2;\u@\H \a\e[32;1m\]\w>\[\e[0m\] "

#AWS
if [[ -f "$HOME/.amazon_keys" ]]; then
  source "$HOME/.amazon_keys";
fi

# Subversion
export SVN_EDITOR=$EDITOR

# Java
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"
export JAVA_VERSION=1.6
export JAVA_JMX_OPTS="-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=7677 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
export JAVA_DEBUG_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=4000,server=y,suspend=n"
export JAVA_SNMP_OPTS="-Dcom.sun.management.snmp.interface=0.0.0.0 -Dcom.sun.management.snmp.port=7885 -Dcom.sun.management.snmp.acl=false"
export JAVA_OPTS="-Xms128m -Xmx512m -XX:MaxPermSize=256m $JAVA_DEBUG_OPTS"

# Ant
export ANT_OPTS="-Xmx256M"

# Maven
export MAVEN_HOME="/usr/local/maven"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m"
export M2_REPO="$HOME/.m2/repository"

# MySQL
export MYSQL_HOME="/usr/local/mysql"

# JBoss
export JBOSS_HOME="/usr/local/jboss"

# Tomcat
export CATALINA_HOME="/usr/local/tomcat"
export CATALINA_OPTS=
export TOMCAT_HOME=$CATALINA_HOME

# Grails
export GRAILS_HOME="/usr/local/grails"

# MongoDB
export MONGODB_HOME="/usr/local/mongodb"

export PATH="/Users/mdesrosiers/bin:$MAVEN_HOME/bin:$GRAILS_HOME/bin:$MONGODB_HOME/bin:$MYSQL_HOME/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
