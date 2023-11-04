bindkey -d
bindkey -e

# disable C-s and C-q
if [[ -t 0 ]]; then
  stty stop undef
  stty start undef
fi

source ~/dotfiles/.aliases
source ~/dotfiles/.aliases_nvim

# Set prompt
if [ -e ~/dotfiles/scripts/git/git-prompt.sh ]; then
  source ~/dotfiles/scripts/git/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUPSTREAM=1
  #setopt PROMPT_SUBST ; PS1='%B%1~%b%{$fg[cyan]%}$(__git_ps1 " (%s)")%{$reset_color%} \$ '
  setopt PROMPT_SUBST ; PS1='%1~%F{cyan}$(__git_ps1 " (%s)")%f \$ '
fi

export RIPGREP_CONFIG_PATH=~/dotfiles/.ripgreprc

export FZF_DEFAULT_COMMAND='rg --files 2>/dev/null'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude '.git' --no-ignore-vcs"


setopt SH_WORD_SPLIT
export dy="--dry-run=client -o yaml"
