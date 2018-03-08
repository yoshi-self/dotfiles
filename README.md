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

### vim plugins via Vundle
Open vim
```
:BundleInstall
```

## Including from default dotfiles

### .bashrc
```
source ~/dotfiles/.bashrc
```

### .vimrc
```
source ~/dotfiles/.vimrc
```

### .gitconfig
```
[include]
    path = ~/dotfiles/.gitconfig
[user]
    name = myname
    email = myemail@example.com
```
