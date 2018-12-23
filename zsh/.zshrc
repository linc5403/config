export TERM="xterm-256color"
# for source vim
export PATH=/opt/local/bin:$PATH
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:~/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:~/bin
export GOPATH=$(go env GOPATH)

# for pyenv
export PATH="/home/hunch/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# for docker-compose auto-completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# Path to your oh-my-zsh installation.
export ZSH="/home/hunch/.oh-my-zsh"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host dir vcs virtualenv vi_mode)

# POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_HIDE_BRANCH_ICON=true
# POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
# POWERLEVEL9K_VCS_HIDE_TAGS=true
# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-aheadbehind git-stash)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host dir vcs virtualenv vi_mode)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="jreese"
# ZSH_THEME="agnoster" ## last use this one
ZSH_THEME="powerlevel9k/powerlevel9k"


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
plugins=(vi-mode z zsh-completions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
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
alias start_mysql_tunnel_test_3308="ssh -NCPf hunch@40.73.33.137 -L 3308:127.0.0.1:3306"
alias start_mysql_tunnel_dev_3307="ssh -fN -L3307:localdevdb.mysql.database.chinacloudapi.cn:3306 hunch@139.219.10.159"
alias mysql_dev="mysql -h 127.0.0.1 -P3307 -u hunch@localdevdb -pAsdf\!\@\#\$ aivideo"
alias mysql_test="mysql -h 127.0.0.1 -P3308 -u hunch -pasdf1234"
alias mysql_onlie="mysql -u aivideo -pbdNJX5XXsT -D aivideo -h rm-bp1l867aq21qq1l7h2o.mysql.rds.aliyuncs.com"

alias docker_login_aliyun="docker login --username=gezhongzhanghao@hunch.ai --password=k27jEmfZSt registry.cn-hangzhou.aliyuncs.com"

alias tmux="tmux -u"


export KEYTIMEOUT=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context vcs dir vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history ram load time)
POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-aheadbehind git-stash)
POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_VCS_GIT_HOOKS=()

# PROXY
export http_proxy=http://127.0.0.1:8888
export https_proxy=http://127.0.0.1:8888

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


set -o vi
