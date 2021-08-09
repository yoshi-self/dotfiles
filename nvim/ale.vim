" Use ALE only for diagnostics
let g:ale_disable_lsp = 1

""ale settings
let g:ale_sign_column_always = 1

let g:ale_linters = {
\   'python': ['flake8'],
\}

let g:ale_python_flake8_options = '--max-line-length=119'
let g:ale_python_black_options = '--line-length 119 --skip-string-normalization'
let g:ale_cpp_gcc_options = '-std=c++11 -Wall -Wextra -DLOCAL'
let g:ale_php_phpcbf_standard = 'PSR2'
let g:ale_php_phpcs_standard = 'PSR2'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'php': ['phpcbf'],
\   'python': ['black'],
\   'go': ['gofmt'],
\}


