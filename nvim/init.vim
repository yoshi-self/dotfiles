source ~/dotfiles/.vimrc.simple

set runtimepath^=~/dotfiles/.vim

"" vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/neosnippet.vim'
  Plug 'thinca/vim-quickrun'
  Plug 'neoclide/coc.nvim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

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

autocmd FileType nerdtree,netrw setlocal signcolumn=no
