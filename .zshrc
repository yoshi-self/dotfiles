# disable C-s and C-q
if [[ -t 0 ]]; then
  stty stop undef
  stty start undef
fi

source ~/dotfiles/.aliases

# Set prompt
if [ -e ~/dotfiles/scripts/git/git-prompt.sh ]; then
  source ~/dotfiles/scripts/git/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUPSTREAM=1
  setopt PROMPT_SUBST ; PS1='%B%1~%b%{$fg[cyan]%}$(__git_ps1 " (%s)")%{$reset_color%} \$ '
fi

export RIPGREP_CONFIG_PATH=~/dotfiles/.ripgreprc

export FZF_DEFAULT_COMMAND='rg --files 2>/dev/null'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
