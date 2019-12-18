if [ $(uname) = "Darwin" ]; then
  # Mac
  export LSCOLORS=gxfxcxdxbxegedabagacad
  alias ls="ls -G"
else
  # Linux
  alias ls="ls --color=auto"
fi

alias la="ls -a"
alias ll="ls -al"
alias l="ls -al"
alias cd..="cd .."
alias cdgit="cd \`git rev-parse --show-toplevel\`"
alias cdg="cd \`git rev-parse --show-toplevel\`"
alias be="bundle exec"
alias ber="bundle exec ruby"
alias rebe="rbenv exec bundle exec"
alias reber="rbenv exec bundle exec ruby"
alias bera="bundle exec rails"
alias up="source ~/dotfiles/scripts/up/up.sh"
alias favd="source ~/dotfiles/scripts/favd/favd.sh"
alias fd="source ~/dotfiles/scripts/favd/favd.sh"
source ~/dotfiles/scripts/favd/favd-bash-completion.sh
alias g="~/dotfiles/scripts/misc/g.sh"
alias gi="git"
alias gti="git"
alias gau="git add -u"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log"
alias gitp="git"
alias gil="git log"
alias gitl="git log"
alias gitpul="git pull"
alias t="tig status"
alias v="vim"
alias vn="vim -c NERDTree"
alias vimn="vim -c NERDTree"
alias c="cd"
alias va="vagrant"
alias vag="vagrant"
alias vagup="vagrant up"
alias scr="screen"
alias sc="screen"
alias dc="docker-compose"
alias dcr="docker-compose run --rm"
alias dce="docker-compose exec"
alias pa="php artisan"
alias tf="terraform"
alias aw="aws"
alias k="kubectl"
alias ka="kubectl apply"
alias kaf="kubectl apply -f"
alias kc="kubectl create"
alias kcf="kubectl create -f"
alias kd="kubectl delete"
alias kdf="kubectl delete -f"
alias kg="kubectl get"
alias kl="kubectl logs"
alias rmdss="find . -name '.DS_Store' -type f -ls -delete"
alias py="python"
alias eksadmintoken='kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '\''{print $1}'\'')'

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
