# dotfiles
This is my dotfiles uploaded for convinience  
Below are instructions for future me

## Installation
```
git clone git@github.com:yoshi-self/dotfiles.git --recursive
```

## Including from default dotfiles

### .bashrc
```
echo 'source ~/dotfiles/.bashrc' >> ~/.bashrc
```

### .vimrc
```
echo 'source ~/dotfiles/.vimrc' >> ~/.vimrc
```

### .screenrc
```
ln -s ~/dotfiles/.screenrc ~/.screenrc
```

### .gitconfig
```
[include]
    path = ~/dotfiles/.gitconfig
[user]
    name = myname
    email = myemail@example.com
```

## Install vim plugins via Vundle
Open vim
```
:PluginInstall
```

## Linters and Fixers
```
# Python
pip install flake8 black
# PHP
composer global require "squizlabs/php_codesniffer=*"
```
