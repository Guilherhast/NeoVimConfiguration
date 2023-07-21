--# Globals
--## Files and folders
--local rootDir = os.getenv('MYVIMRC'):match('^.+/')
local dotlocal = os.getenv('HOME') .. '/.local/state/nvim'

_G.nvimDirPrefix = 'nvim_dirs'

vim.o.undodir = dotlocal .. '/' .. _G.nvimDirPrefix .. '/undo'
vim.o.backupdir = dotlocal .. '/' .. _G.nvimDirPrefix .. '/backup'

vim.o.swapfile=false
vim.o.undofile=true
vim.o.backup=true

--## Basic keys

vim.g.mapleader='\\'

--## Interface

vim.o.splitright=true
vim.o.splitbelow=true

vim.o.ruler=true

vim.o.wildmenu=true

vim.o.wrap=false

vim.o.t_Co=256
vim.o.background='dark'

vim.o.shiftwidth=4
vim.o.tabstop=4

--## Avoid anoying me

vim.o.nowrap=true

vim.o.expandtab=false
vim.o.noexpandtab=true
vim.g.python_recommended_style=0 --Annoy me not with spaces

vim.o.guicursor= vim.o.guicursor .. ',a:blinkon0'
vim.o.scrolloff=0
vim.o.belloff='all'

vim.o.hidden = true

vim.o.mouse = 'r'

vim.o.langmenu='en_US'
--set langmenu=en_US
--let $LANG='en_US' -- This line was not translated

--## Faster editing

vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = true

vim.g.closetag_filetypes =  'html,xhtml,phtml'

--## Navigation
vim.o.autochdir=true

--## Buffer flags
-- filetype plugin indent on

--## Security

vim.o.autoread=true

