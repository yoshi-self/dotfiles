#!/bin/bash
echo 'source ~/dotfiles/.bashrc' >> .bashrc
echo 'source ~/dotfiles/.vimrc' >> .vimrc
ln -s ~/dotfiles/.screenrc ~/.screenrc
if [ ! -e ~/.gitconfig ]; then
  cat <<EOT > ~/.gitconfig
[include]
    path = ~/dotfiles/.gitconfig
[user]
    name = myname
    email = myemail@example.com
EOT
fi
