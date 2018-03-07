# dotfiles
This is my dotfiles uploaded for convinience

## Installing

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
source ~/dotfile/.bashrc
```

### .vimrc
```
source ~/dotfile/.bashrc
```

### .gitconfig
```
[include]
    path = ~/dotfiles/.gitconfig
[user]
    name = myname
    email = myemail@example.com
```
