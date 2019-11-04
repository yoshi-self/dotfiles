set clipboard+=unnamed
set guioptions-=T
set guioptions-=m
set lines=40
set columns=100
colorscheme desert

if has('win32') || has('win64')
    set guifont=Migu\ 1M:h12
elseif has('mac')
    set guifont=Migu\ 1M:h16
endif

command! GVimrc :e ~/dotfiles/.gvimrc
