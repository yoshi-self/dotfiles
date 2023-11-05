local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { 'preservim/nerdtree' },
  { 'vim-airline/vim-airline' },
  { 'nvim-tree/nvim-web-devicons' },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
  },
  { 'lpoto/telescope-docker.nvim' },
  { 'neoclide/coc.nvim', branch = 'release' },
  { 'stephpy/vim-php-cs-fixer' },
})


vim.opt.number = true
vim.opt.ruler = true
vim.opt.listchars = 'tab:>.,nbsp:%,extends:\\'
vim.opt.list = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shortmess:append({ I = true })
vim.opt.hidden = true
vim.opt.wildmode = "list:longest"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.laststatus = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.whichwrap = 'b,s,h,l,<,>,[,]'
vim.opt.backspace = 'indent,eol,start'
vim.opt.previewheight = 5
vim.opt.encoding = 'utf-8'
vim.opt.undofile = false
vim.opt.completeopt = 'menuone'
vim.opt.expandtab = true
vim.opt.conceallevel = 0

vim.cmd([[
    colorscheme desert
    highlight MatchParen ctermbg=LightGray ctermfg=Black
    highlight Normal ctermbg=black guibg=black
    highlight NonText ctermbg=black guibg=black
    highlight Pmenu ctermfg=0 ctermbg=13 guibg=grey15
    highlight CursorLine guibg=grey30
    highlight CocErrorSign guifg=#C00000
    highlight PreProc guifg=#f56666
    highlight Title guifg=#f56666
    set termguicolors
    let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
    let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
    let NERDTreeShowHidden=1
]])

vim.keymap.set('', '<C-p>', '<C-PageUp>')
vim.keymap.set('', '<C-n>', '<C-PageDown>')
vim.keymap.set('i', '<C-@>', '')
vim.keymap.set('i', '<C-a>', '<HOME>')
vim.keymap.set('i', '<C-e>', '<END>')
vim.keymap.set('', '<MiddleMouse>', '')
vim.keymap.set('n', '<C-s>', ':w<CR>', { remap = false })
vim.keymap.set('n', 'Q', '', { remap = false })
vim.keymap.set('n', 'ZZ', '', { remap = false })

vim.g.mapleader = ' '

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fl', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>e', ':Telescope file_browser<CR>', { remap = false })
vim.keymap.set('n', '<leader>fd', ':Telescope docker<CR>', { remap = false })

vim.cmd('source ~/dotfiles/nvim/coc.vim')

vim.cmd([[autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()]])

require('nvim')
