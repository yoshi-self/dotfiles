colorscheme desert
highlight Normal ctermbg=black guibg=black
highlight NonText ctermbg=black guibg=black
highlight Pmenu ctermfg=0 ctermbg=13 guibg=grey15
highlight CursorLine guibg=grey30
highlight CocErrorSign guifg=#C00000
highlight PreProc guifg=#f56666
highlight Title guifg=#f56666

""NERDTree
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeIgnore=['\~$', '\.pyc$', '^\.$', '^\.\.$']
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=25

""neosnippet
" disable all default snippets
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }
" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
let g:neosnippet#snippets_directory='~/dotfiles/.vim/snippets'

"".hcl
autocmd BufNewFile,BufRead *.hcl setfiletype hcl

"" vim-phpfmt
let g:phpfmt_standard = 'PSR2'
"let g:phpfmt_autosave = 0
