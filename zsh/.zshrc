export PATH=/opt/local/bin:$PATH
export TERM="xterm-256color"
# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
export DEFAULT_USER=linchuan

export PYENV_ROOT=~/.pyenv

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
eval "$(pyenv init -)"

#RabbitMQ Config
export PATH=$PATH:/usr/local/sbin
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export PATH=$PATH:/Applications/GPAC.app/Contents/MacOS
export PATH=$PATH:~/bin:/Users/linchuan/workdir/bin
export PATH=$PATH:/Applications/MacVim.app/Contents/bin

alias start_mysql_tunnel_test_3308="ssh -NCPf hunch@40.73.33.137 -L 3308:127.0.0.1:3306"
alias start_mysql_tunnel_dev_3307="ssh -fN -L3307:localdevdb.mysql.database.chinacloudapi.cn:3306 hunch@139.219.10.159"
alias mysql_local_test="mysql -u root -p -h localhost -D test_db"
alias mysql_dev="mysql -h 127.0.0.1 -P3307 -u hunch@localdevdb -pAsdf\!\@\#\$ aivideo"
alias mysql_local_dev="mysql -u root -pasdf1234 -h localhost -D aivideo"
alias mysql_online="mysql -u aivideo -pbdNJX5XXsT -D aivideo -h rm-bp1l867aq21qq1l7h2o.mysql.rds.aliyuncs.com"
alias mysql_baidu="mysql -u aivideo -paivideo_2019 -D aivideo -h mysql55.rdsm7ft4q0ecak8.rds.gz.baidubce.com"
# alias mysql_db_server="mysql -u hunch -pasdf1234 -h 40.73.39.124"
# alias mysql_db_server="mysql -u hunch -pasdf1234 -h 127.0.0.1 -P 3388"
alias ssh_build="ssh-agent; ssh-add ~/.ssh/id_rsa; ssh -i ~/.ssh/id_rsa -A root@40.125.172.62"
#alias ssh_build="ssh 40.125.172.62"
alias ssh_transit="ssh-agent; ssh-add ~/.ssh/id_rsa; ssh -i ~/.ssh/id_rsa -A root@121.196.213.142"
#alias ssh_transit="ssh 121.196.213.142"
alias ssh_extractor="ssh extractor.zenvideo.cn"
#alias ssh_extractor="ssh root@extractor.zenvideo.cn"
alias ssh_pre_worker1="ssh hunch@139.219.104.30"
alias ssh_pre_worker2="ssh hunch@42.159.81.183"
alias ssh_pre_worker3="ssh hunch@42.159.80.48"
alias ssh_pre_worker4="ssh hunch@42.159.85.184"
alias ssh_test_worker1="ssh lvqier@40.125.174.2"
alias ssh_test_worker2="ssh lvqier@139.219.107.13"
alias ssh_pro_render1="ssh hunch@139.219.108.22"
alias ssh_pro_render2="ssh hunch@139.219.98.236"
alias ssh_pro_render3="ssh hunch@139.219.100.105"
alias ssh_pro_render4="ssh hunch@139.219.101.166"
alias ssh_pro_render5="ssh hunch@139.219.97.246"
alias ssh_pro_render6="ssh hunch@40.125.212.20"
alias ssh_pro_render7="ssh hunch@40.125.171.77"
alias ssh_pro_render8="ssh hunch@40.125.207.30"
alias ssh_pro_render9="ssh hunch@40.125.162.117"
alias ssh_pro_render10="ssh hunch@40.125.164.133"
alias ssh_pro_render11="ssh hunch@139.219.110.91"
alias ssh_pro_render12="ssh hunch@139.219.69.174"
alias ssh_pro_render13="ssh hunch@139.219.101.33"
alias ssh_pro_render14="ssh hunch@40.125.175.34"
alias ssh_pro_render15="ssh hunch@40.125.162.96"
alias ssh_pro_render16="ssh hunch@139.219.68.174"
alias ssh_pro_render17="ssh hunch@139.219.65.202"
alias ssh_pro_render18="ssh hunch@40.125.168.247"
alias ssh_pro_render19="ssh hunch@40.125.212.9"
alias ssh_dev="ssh hunch@139.219.10.159"
alias ssh_svg_render1='ssh hunch@139.219.65.1'
alias ssh_svg_render2='ssh hunch@139.219.106.210'
alias ssh_daily='ssh hunch@139.219.10.159'
alias ssh_daily2='ssh hunch@139.219.11.75'
alias ssh_flow1='ssh -l hunch 40.73.112.177'
alias ssh_flow2='ssh -l hunch 40.73.103.150'
alias ssh_flow3='ssh -l hunch 40.73.113.111'
alias ssh_flow4='ssh -l hunch 40.73.36.22'
alias ssh_data='ssh hunch@40.73.37.81'
alias ssh_celery_beat='ssh hunch@40.73.36.43'
alias ssh_sql_server='ssh hunch@40.73.39.124'
alias ssh_azure_test1='ssh hunch@40.73.33.137'
alias ssh_azure_test2='ssh hunch@40.73.38.160'
alias ssh_hongkong='ssh -i ~/.ssh/hunch_hongkong.pem root@47.244.117.109'

alias set_online_db="export MYSQL_LOCATION=rm-bp1l867aq21qq1l7h2o.mysql.rds.aliyuncs.com"
alias unset_online_db="unset MYSQL_LOCATION"
#########################################################################
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerline"
# ZSH_THEME="ys"
# ZSH_THEME="random"
ZSH_THEME="agnoster" ## last use this 
# ZSH_THEME="powerlevel9k/powerlevel9k"
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
plugins=(vi-mode z docker)
# plugins=(vi-mode z pyenv docker)
# plugins=(git vi-mode z pyenv docker)
export VIRTUAL_ENV_DISABLE_PROMPT=0

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR='vim'

# PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

export PATH=$PATH:$(go env GOPATH)/bin

defaults write TeXShop BringPdfFrontOnAutomaticUpdate NO

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# 加上 "vi_mode"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(pyenv vcs dir vi_mode)
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

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# for vim projects
alias vim_aivideo='vim --servername aivideo -S ~/.vim/s/aivideo.vim'
alias vim_aivideo_add='vim --servername aivideo --remote-silent '
