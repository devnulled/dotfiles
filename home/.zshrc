# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias flushdns="sudo killall -HUP mDNSResponder"
alias serveit="python -m SimpleHTTPServer"
alias git-review='git push origin HEAD:refs/for/master'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundlr django git jira mvn sbt screen sublime vagrant)

source $ZSH/oh-my-zsh.sh

# Set the GOROOT & GOPATH for golang
export GOROOT=~/frameworks/go-1.2.1
export GOPATH=~/dev/go

# Set our own Ansible Hosts file instead of /etc/ansible/hosts
export ANSIBLE_HOSTS=~/.ansible_hosts

# Customize to your needs...
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$GOROOT/bin
PATH=$PATH:/Applications/Postgres93.app/Contents/MacOS/bin
PATH=$PATH:/usr/local/opt/curl/bin:/usr/local/apache-maven-3.0.3
export PATH=~/bin:~/.bin:~/.scripts:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$PATH


export JAVA7_HOME=$(/usr/libexec/java_home -v 1.7.0)
export JAVA6_HOME=$(/usr/libexec/java_home -v 1.6.0)

export JAVA_HOME=$JAVA6_HOME

export TOMCAT_HOME=/usr/local/apache-tomcat

export CATALINA_OPTS='-XX:MaxPermSize=1024M -Xmx2680M -Xms1024M -XX:+UseConcMarkSweepGC -Dcom.sun.management.jmxremote'

export PYTHONPATH=/usr/local/lib/python/site-packages/

export GRADLE_HOME='/usr/local/bin/gradle'

export GRADLE_OPTS='-XX:MaxPermSize=1024M -Xmx2680M -Xms1024M -XX:+UseConcMarkSweepGC -Dcom.sun.management.jmxremote'

export SBT_NORMAL_OPTS="-XX:+CMSClassUnloadingEnabled -XX:ReservedCodeCacheSize=512M -XX:MaxPermSize=2024M -Xmx4680M -Xms1024M -d64"
export SBT_DEBUG_OPTS="-XX:+CMSClassUnloadingEnabled -XX:ReservedCodeCacheSize=512M -XX:MaxPermSize=2024M -Xmx4680M -Xms1024M -d64 -Xdebug -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5004"
export SBT_OPTS='$SBT_NORMAL_OPTS'

alias sbt-debug="export SBT_OPTS='$SBT_DEBUG_OPTS' ; sbt"
alias sbt-normal="export SBT_OPTS='$SBT_NORMAL_OPTS' ; sbt"

# TODO: Make these two easy to enable/switch between
# export GRAILS_OPTS="-Xmx1G -Xms256m -XX:MaxPermSize=256m -javaagent:/usr/local/appdynamics/agent/javaagent.jar"

# Prod like settings
#export GRAILS_OPTS="-server -Xms2048M -Xmx2048M -XX:NewSize=1024m -XX:MaxNewSize=1024m -XX:PermSize=512M -XX:MaxPermSize=512M -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSClassUnloadingEnabled -XX:+UseTLAB -XX:+HeapDumpOnOutOfMemoryError -XX:+DisableExplicitGC -Djava.awt.headless=true -Djava.net.preferIPv4Stack=true"

# Default Local Settings
export GRAILS_OPTS="-Xmx1G -Xms256m -XX:MaxPermSize=256m -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSClassUnloadingEnabled -XX:+UseTLAB -XX:+HeapDumpOnOutOfMemoryError -XX:+DisableExplicitGC -Djava.awt.headless=true -Djava.net.preferIPv4Stack=true"

GPG_TTY=$(tty)
export GPG_TTY

unsetopt correct_all

[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

# Tell ls to be colorful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# List all versions of Java installed
alias java_ls='/usr/libexec/java_home -V 2>&1 | grep -E "\d.\d.\d_\d\d" | cut -d , -f 1 | colrm 1 4 | grep -v Home'

# Switches the version of Java being used
function java_use() {
    export JAVA_HOME=$(/usr/libexec/java_home -v $1)
    java -version
}

# Load all local customizations which are not meant to be public
source .private/.zshrc_extras || echo ".zshrc: Unable to load .private/.zshrc_extras; skipping"


