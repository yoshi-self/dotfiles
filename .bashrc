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
alias be="bundle exec"
alias up="source ~/dotfiles/scripts/up/up.sh"
