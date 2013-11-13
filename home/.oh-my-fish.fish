echo '--> Loading settings from .oh-my-fish.fish'

# Env variables

set PATH /usr/local/opt/curl/bin /usr/local/apache-maven-3.0.3 ~/bin ~/.bin $PATH 
set PATH ~/.scripts /usr/bin:/bin /usr/sbin /sbin /usr/local/bin /usr/X11/bin $PATH
set PATH /Applications/git-annex.app/Contents/MacOS $PATH

set -U JAVA7_HOME $(/usr/libexec/java_home -v 1.7.0)
set -U JAVA6_HOME $(/usr/libexec/java_home -v 1.6.0)

set -g JAVA_HOME $JAVA6_HOME

set -U TOMCAT_HOME '/usr/local/apache-tomcat'

set -U CATALINA_OPTS '-XX:MaxPermSize=1024M -Xmx2680M -Xms1024M -XX:+UseConcMarkSweepGC -Dcom.sun.management.jmxremote'

set -U GRADLE_HOME '/usr/local/bin/gradle'

set -U GRADLE_OPTS '-XX:MaxPermSize=1024M -Xmx2680M -Xms1024M -XX:+UseConcMarkSweepGC -Dcom.sun.management.jmxremote'

set -U PYTHONPATH=/usr/local/lib/python/site-packages/

echo '--> Settings loaded successfully!'