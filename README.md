# dotfiles
This is my dotfiles uploaded for convinience  
Below are instructions for future me

## Installation

### submodules
After clone, at the root of this repo
```
git submodule init
git submodule update
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
