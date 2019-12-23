if [ $(uname) = "Darwin" ]; then
  # Mac
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls="ls -G"
else
  # Linux
  alias ls="ls --color=auto"
fi

source ~/dotfiles/.aliases

# disable C-s and C-q
if [[ -t 0 ]]; then
  stty stop undef
  stty start undef
fi

# Change title of screen window
if [ $TERM == 'screen' ]; then
  #export PROMPT_COMMAND='printf "\033k%s:%s\033\134" "${USER}" "`basename \"${PWD/#$HOME/~}\"`"'
  export PROMPT_COMMAND='printf "\033k%s:%s\033\134" "`[ $USER = root ] && printf \"#\" || printf \"$\"`" "`basename \"${PWD/#$HOME/~}\"`"'
fi

# Set prompt
if [ -e ~/dotfiles/scripts/git/git-prompt.sh ]; then
  source ~/dotfiles/scripts/git/git-prompt.sh
  source ~/dotfiles/scripts/git/git-completion.bash
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUPSTREAM=1
  export PS1='[\u@\h \W]\[\033[36m\]$(__git_ps1 \(%s\))\[\033[00m\]\$ '
else
  export PS1='[\u@\h \W]\$ '
fi
