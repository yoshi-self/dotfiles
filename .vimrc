source <sfile>:h/.vimrc.simple

set runtimepath^=~/dotfiles/.vim

filetype off
set runtimepath+=~/dotfiles/.vim/bundle/vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'QuickBuf'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'posva/vim-vue'
"Plugin 'cohama/lexima.vim'
"Plugin 'tomasr/molokai'
"Plugin 'w0ng/vim-hybrid'
"Plugin 'nanotech/jellybeans.vim'
"Plugin 'vim-scripts/twilight'
"Plugin 'jonathanfilip/vim-lucius'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'jpo/vim-railscasts-theme'
"Plugin 'vim-scripts/Wombat'
"Plugin 'vim-scripts/rdark'
"Plugin 'junegunn/seoul256.vim'
call vundle#end()
filetype plugin indent on

colorscheme desert

nnoremap <C-s> :w<CR>

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
let g:NERDTreeWinSize=25

""neosnippet
" disable all default snippets
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }
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
let g:ale_php_phpcbf_standard = 'PSR2'
let g:ale_php_phpcs_standard = 'PSR2'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'php': ['phpcbf']
\}

""emmet-vim
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
\  'variables' : {
\    'lang' : "ja"
\  },
\  'indentation': '  ',
\  'html' : {
\    'snippets' : {
\      'html:5': "<!DOCTYPE html>\n"
\        ."<html>\n"
\        ."<head>\n"
\        ."\t<meta charset=\"${charset}\">\n"
\        ."\t<title></title>\n"
\        ."</head>\n"
\        ."<body>\n\t${child}|\n</body>\n"
\        ."</html>",
\    }
\  }
\}

""vim-airline
"default: '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v'
let g:airline_section_z = ' %#__accent_bold#%l/%L%#__restore__#:%3v'
