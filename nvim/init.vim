source ~/dotfiles/.vimrc.simple

"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
set runtimepath^=~/dotfiles/.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/defx.nvim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('neoclide/coc.nvim')
  call dein#add('thinca/vim-quickrun')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
"End dein Scripts-------------------------

source <sfile>:h/defx.vim

"" coc.nvim
let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-python',
\]
set signcolumn=yes
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

source ~/dotfiles/.vim/misc.vim

autocmd FileType nerdtree setlocal signcolumn=no
