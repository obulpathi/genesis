# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# override zsh settings
PS1='%1c # '
ZSH_THEME_TERM_TITLE_IDLE="%3c"

# my settings

# shortcut remapping
stty intr ^K

# append history
setopt APPEND_HISTORY

# Ubuntu Launchpad
export DEBEMAIL="obulpathi@gmail.com"
export DEBFULLNAME="Obulapathi"

# display settings
set sw=4
set tab-width=4

# aliases
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -l'
alias lh='ls -lh'
alias cp='cp -r'
alias df='df -h'
alias rm='rm -r'
alias maek='make'
alias chown='chown -R'
alias chmod='chmod -R'
alias pyhton='python'
alias google='gcloud'
alias eenv='wokron'
alias xenv='deactivate'
alias newenv='mkvirtualenv'
alias play='ansible-playbook'
alias clipboard='xclip -selection clipboard'
alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# data directory aliases
alias code='cd ~/code'
alias downloads='cd ~/downloads'

# docker containers
alias docker-spark='docker run -i -t -h sandbox sequenceiq/spark:1.2.0 /etc/bootstrap.sh -bash'
alias docker-kafka=''
alias docker-hadoop=''
alias docker-cassandra='docker run -d spotify/cassandra'
alias docker-zookeeper='docker run -d jplock/zookeeper'
alias docker-neo4j='docker run -i -t -d --name neo4j --cap-add=SYS_RESOURCE -p 7474:7474 tpires/neo4j'

# The next line updates PATH for the Google Cloud SDK.
source '/home/obulpathi/tools/google/path.zsh.inc'

# The next line enables bash completion for gcloud.
source '/home/obulpathi/tools/google/completion.zsh.inc'

# python virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# go path
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

# Java
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PATH=$PATH:$JAVA_HOME/bin

# Spark
export SPARK_HOME=~/tools/spark/
export PATH=$PATH:$SPARK_PATH/bin

# source additional files
source ~/.scripts.sh
source ~/.localrc

# powerline
if [[ -r .powerline.zsh ]]; then
	source .powerline.zsh
fi

echo "Life, Liberty and Pursiut of Open Standards."
