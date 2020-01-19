# 使用说明

## 1. zsh  
.zshrc  
.zshrc -> config/zsh/.zshrc  
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```  
Enable it in your.zshrcby adding it to your plugin list and reloading the completion:  

  plugins=(… zsh-completions)  
  autoload -U compinit && compinit  

## 2. vim
.vimrc -> config/vim/.vimrc  
```
sudo apt-get install libpython3-all-dev python3-all-dev libx11-dev xorg-dev python-all-dev libpython-all-dev
./configure --prefix=/opt/local --enable-fail-if-missing --disable-darwin  --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-cscope --enable-terminal --enable-multibyte --enable-fontset --with-features=huge --with-x
git clone https://github.com/vim/vim.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## 3. tmux
.tmux.conf -> config/tmux/.tmux.conf  
```
sudo apt install autoconf automake m4 libtool libevent-dev libncurses5-dev perl pkg-config gcc make automake
git clone https://github.com/tmux/tmux.git
./configure --prefix=/opt/local
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```  

## 4. python  
### 4.1 pip  
.pip -> config/pip  
```
sudo apt-get install python-pip python-dev build-essential
```

### 4.2 pyenv
```
sudo apt-get install  make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev git-core
curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
```

### 4.3 pyenv-virtualenv  
```
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
```


## 4.4 flake8
* ~/.config/flake8  

```
[flake8]
ignore = E501, E265, E722
exclude =
    .git,
    __pycache__,
builtins = "_"
```

`flake8 --install-hook=git`

`git config --bool flake8.strict true`


## 5. mysql

## 5.1 inputrc
more ~/.inputrc

```
set editing-mode vi
```
## 5.2 client  
```
sudo apt-get install mariadb-client-10.1
sudo apt install default-libmysqlclient-dev 
pip install mysqlclient
```
