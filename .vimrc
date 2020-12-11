source <sfile>:h/.vimrc.simple

set runtimepath^=~/dotfiles/.vim

filetype off
set runtimepath+=~/dotfiles/.vim/bundle/vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'posva/vim-vue'
Plugin 'hashivim/vim-terraform'
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'cohama/lexima.vim'
call vundle#end()
filetype plugin indent on

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

source <sfile>:h/.vim/misc.vim
