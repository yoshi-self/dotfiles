set nocompatible

set runtimepath^=~/dotfiles/.vim

syntax on
set number 
set ruler
set listchars=tab:>.,nbsp:%,extends:\
set list
set tabstop=4
set shiftwidth=4
set shortmess+=I
set hidden
set wildmode=list:longest
set noswapfile
set nobackup
"set autochdir
set laststatus=2
map <C-p> <C-PageUp>
map <C-n> <C-PageDown>
imap <C-@> <Nop>
imap <C-a> <Nop>
imap <C-a> <HOME>
imap <C-e> <END>
map <MiddleMouse> <Nop>
set splitbelow
set splitright
set incsearch
set hlsearch
set ignorecase
set smartcase
set autoindent
set cindent
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set tags+=tags;
set previewheight=5
set encoding=utf-8
set noundofile
set completeopt=menuone
colorscheme desert
highlight PmenuSel cterm=bold ctermfg=0 ctermbg=6 guibg=DarkGrey

"open .vimrc
command! Vimrc :e ~/dotfiles/.vimrc

command! -nargs=? -complete=dir -bang C call s:ChangeCurrentDir('<args>', '<bang>')
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif
endfunction

let g:netrw_localrmdir = "rm -r"
let g:netrw_keepdir = 0

let g:quickrun_config = {'*' : {'split' : ''}}

hi MatchParen ctermbg=LightGray ctermfg=Black

filetype off
set runtimepath+=~/dotfiles/.vim/bundle/vundle
"call vundle#rc()
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'QuickBuf'
"Bundle 'AutoComplPop'
"Bundle 'thinca/vim-quickrun'
Plugin 'scrooloose/nerdtree'
"Bundle 'Shougo/vimproc'
Plugin 'Shougo/neocomplcache'
"Bundle 'Shougo/neosnippet'
"Bundle 'Shougo/vimshell'
"Bundle 'tomasr/molokai'
"Bundle 'w0rp/ale'
Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on

let g:vimshell_split_command = 'split'

""neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
let g:neocomplcache_enable_auto_select = 1
inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"

""NERDTreeIgnore
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeIgnore=['\~$', '\.pyc$', '^\.$', '^\.\.$']
let g:NERDTreeShowHidden=1

""neosnippet
"Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
let g:neosnippet#snippets_directory='~/dotfiles/.vim/snippets'
"conflicts with neosnippets
"nunmap Q


""ale settings
let g:ale_sign_column_always = 1
let g:ale_cpp_gcc_options = '-std=c++11 -Wall -Wextra -DLOCAL'

