
# shortcut remapping
stty intr ^K

# python virtualenv
#export WORKON_HOME=$HOME/.virtualenvs
#[ -f /usr/share/virtualenvwrapper/virtualenvwrapper.sh ] && source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# Java
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export PATH=$PATH:$JAVA_HOME/bin

# Chef
export PATH="$PATH:/opt/chef/embedded/bin"

# Anaconda
[ -f $HOME/tools/anaconda/bin ] && export PATH=$HOME/tools/anaconda/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/obulpathi/.sdkman"
[[ -s "/home/obulpathi/.sdkman/bin/sdkman-init.sh" ]] && source "/home/obulpathi/.sdkman/bin/sdkman-init.sh"
