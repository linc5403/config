export TERM="xterm-256color"
# for source vim
export PATH=/opt/local/bin:$PATH
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:~/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

# for pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# for docker-compose auto-completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="jreese"
# ZSH_THEME="agnoster" ## last use this one
#ZSH_THEME="powerlevel9k/powerlevel9k" 


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# plugins=(git vi-mode z zsh-completions)
# plugins=(git z zsh-completions docker docker-compose)
plugins=(git z zsh-completions mvn docker docker-compose virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
# export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias start_mysql_tunnel_test_3308="ssh -NCPf hunch@40.73.33.137 -L 3308:127.0.0.1:3306"
# alias start_mysql_tunnel_dev_3307="ssh -fN -L3307:localdevdb.mysql.database.chinacloudapi.cn:3306 hunch@139.219.10.159"
# alias mysql_dev="mysql -h 127.0.0.1 -P3307 -u hunch@localdevdb -pAsdf\!\@\#\$ aivideo"
# alias mysql_test="mysql -h 127.0.0.1 -P3308 -u hunch -pasdf1234"
# alias mysql_online="mysql -u aivideo -pbdNJX5XXsT -D aivideo -h rm-bp1l867aq21qq1l7h2o.mysql.rds.aliyuncs.com"

# alias docker_login_aliyun="docker login --username=gezhongzhanghao@hunch.ai --password=k27jEmfZSt registry.cn-hangzhou.aliyuncs.com"

# alias tmux="tmux -u"


#### for powerlevel9k in use
export KEYTIMEOUT=1

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs virtualenv)

POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-aheadbehind git-stash)

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context vcs dir vi_mode)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv vcs dir vi_mode)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_VCS_GIT_HOOKS=()

# PROXY
# export http_proxy=http://127.0.0.1:8888
# export https_proxy=http://127.0.0.1:8888

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# set -o vi

# for java
export JAVA_HOME11=~/software/jdk-11.0.6
export JAVA_HOME8=/home/linc/software/jdk1.8.0_271
alias jdk8="export JAVA_HOME=$JAVA_HOME8 && export PATH=$JAVA_HOME8/bin:$PATH"
alias jdk11="export JAVA_HOME=$JAVA_HOME11 && export PATH=$JAVA_HOME11/bin:$PATH"
jdk8
# export PATH=$JAVA_HOME/bin:$PATH

# recover robbyrussell 2020-0911
# 下面这一行会修改robbyrussell的样式
# for powerline
# source /usr/share/powerline/bindings/zsh/powerline.zsh

# for vs code
export PATH=$PATH:~/software/VSCode-linux-x64/bin

# for docs tools
export PATH=$PATH:~/docs/tools

export EDITOR='emacs -nw'

# for idea
export PATH=$PATH:/home/linc/software/idea-IU-203.7717.56/bin
alias idea='idea.sh . &'

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

export PATH=/home/linc/software/node-v12.18.1-linux-x64/bin:$PATH

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

#alias for open
alias open="xdg-open"


# rar
export PATH=$PATH:~/software/rar

# gradle
export PATH=~/bin/gradle-6.7/bin:$PATH

# pyenv
PROMPT+='$(virtualenv_prompt_info)'


# pycharm
export PATH=/home/linc/software/pycharm-2020.2.3/bin:$PATH
alias pycharm='pycharm.sh . &'

# webStorm
export PATH=/home/linc/software/WebStorm-203.7717.59/bin:$PATH
alias webstorm='webstorm.sh . &'

# mysqlDB
alias mysql_online='mysql -h online -P 13306 -uroot -pqizhi025 -Dwisdom-boot'

# openvpn
alias connect_office='nohup sudo openvpn --config ~/openvpn/qzxl.ovpn --auth-user-pass ~/openvpn/pass.txt >/dev/null 2>&1 &'
alias disconnect_office="ps aux | grep openvpn | grep -v grep | awk '{print \$2}' |xargs sudo kill -9"
