source ~/dotfiles/.vimrc.simple

set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

set runtimepath^=~/dotfiles/.vim

"" vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'Shougo/neosnippet.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'dense-analysis/ale'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'mattn/emmet-vim'
"  Plug 'github/copilot.vim'
call plug#end()

"" vim-airline
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

"" quickrun
let g:quickrun_config = {'*' : {'split' : ''}}

source ~/dotfiles/.vim/coc.vim
source ~/dotfiles/.vim/misc.vim
source ~/dotfiles/nvim/ale.vim

autocmd FileType nerdtree,netrw setlocal signcolumn=no
