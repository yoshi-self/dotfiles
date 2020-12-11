colorscheme desert

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

