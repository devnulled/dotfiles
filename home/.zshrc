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

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew django mvn screen)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/apache-maven-3.0.3:~/bin:~/.bin:~/.scripts:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

export TOMCAT_HOME=/usr/local/apache-tomcat

export CATALINA_OPTS='-XX:MaxPermSize=1024M -Xmx2680M -Xms1024M -XX:+UseConcMarkSweepGC -Dcom.sun.management.jmxremote'

export PYTHONPATH=/usr/local/lib/python/site-packages/

alias git-review='git push origin HEAD:refs/for/master'

export GRADLE_HOME='/usr/local/bin/gradle'

export GRADLE_OPTS='-XX:MaxPermSize=1024M -Xmx2680M -Xms1024M -XX:+UseConcMarkSweepGC -Dcom.sun.management.jmxremote '

unsetopt correct_all

[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

# Tell ls to be colorful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
