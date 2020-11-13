export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=/opt/local/bin:$PATH
export TERM="xterm-256color"
# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
export DEFAULT_USER=linchuan

export PYENV_ROOT=~/.pyenv

# pyenv
export PATH=~/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


#RabbitMQ Config
export PATH=$PATH:/usr/local/sbin
alias date-file="date '+%Y-%m-%d-%H-%M'"
#########################################################################
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell" ## default
# ZSH_THEME="powerline"
# ZSH_THEME="ys"
# ZSH_THEME="random"
# ZSH_THEME="agnoster" 
# ZSH_THEME="powerlevel9k/powerlevel9k" ## last use this 
# ZSH_THEME="spaceship"



# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z docker)
# plugins=(vi-mode z docker)
# plugins=(vi-mode z pyenv docker)
# plugins=(git vi-mode z pyenv docker)
export VIRTUAL_ENV_DISABLE_PROMPT=0

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# export EDITOR='vim'

# PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

# export PATH=$PATH:$(go env GOPATH)/bin

defaults write TeXShop BringPdfFrontOnAutomaticUpdate NO

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# 加上 "vi_mode"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(pyenv vcs dir)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(pyenv vcs dir vi_mode)
# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-aheadbehind git-stash)

# docker-compose 自动补全
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# npm permission
export PATH=~/.npm-global/bin:$PATH
# # flake8
# export PATH=/Users/linchuan/Library/Python/2.7/bin:$PATH

# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# for vim projects
# alias vim_aivideo='vim --servername aivideo -S ~/.vim/s/aivideo.vim'
# alias vim_aivideo_add='vim --servername aivideo --remote-silent '


# for local bin
export PATH=$PATH:~/bin

# for local_proxy

# unproxy
alias unproxy='unset http_proxy; unset https_proxy; unset all_proxy'
alias proxy='unproxy; export http_proxy=http://127.0.0.1:7078; export https_proxy=http://127.0.0.1:7078'
# proxy

# for java

export JAVA_11_HOME=~/bin/jdk-11.0.5.jdk/Contents/Home
# 设置 JDK 8  
export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)
#   
# #默认JDK 13  
export JAVA_HOME=$JAVA_11_HOME
#   
# #alias命令动态切换JDK版本  
alias jdk8='export JAVA_HOME=$JAVA_8_HOME'
alias jdk11='export JAVA_HOME=$JAVA_11_HOME'
# alias jdk12='export JAVA_HOME=$JAVA_12_HOME'
jdk8

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles


# homebrew
export HOMEBREW_NO_AUTO_UPDATE=true

alias mysql-local='mysql -uroot -pasdf1234 -D banyuan'


# pip
export PATH=~/Library/Python/3.7/bin:$PATH
export PATH=$PATH:"~/Google 云端硬盘/lectures/docs/tools"


# for java
# export JAVA_HOME=/Users/banyuan/bin/jdk-11.0.7.jdk/Contents/Home

# export PATH=$JAVA_HOME/bin:$PATH


# for nodejs
export PATH=/Users/banyuan/bin/node-v14.15.0-darwin-x64/bin:$PATH
alias cnpm="npm --registry=https://registry.npm.taobao.org \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"
