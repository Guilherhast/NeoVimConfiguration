" # Variables
"
" Variables set for configurating vim

" ## Automatic actions

" Reload changed files
set autoread

" Change directory when oppening a file
set autochdir

" ## Interface appearance

" Sets the language used in the menus to English (US).
" Sets the environment variable LANG to 'en_US', forcing English messages regardless of system locale.
set langmenu=en_US
let $LANG='en_US'

" Show commands in the bottom right of the screen
set showcmd

" Allow terminal colors
set t_Co=256

" Make the background dark
" set background="dark" "TODO Change on definitive

" Configure tab size and width
set smartindent
set shiftwidth=4
set tabstop=4

" Enable and configure wildmenu
set wildmenu
set wildmode=longest:full,full

" Disables cursor blinking in all modes (a: all modes, blinkon0: no blinking).
set guicursor+=a:blinkon0

" Add rule to the bottom right
set ruler

" Enable file relative numbering
set number relativenumber

" Disable line wrapping
set nowrap


" ## Interface behaviour

" Allows you to hide buffers without saving them (useful for switching files without prompts).
set hidden

" Disables all bell sounds (visual and audible) in Vim.
set belloff=all

" Scroll only when you hit the bottom or top
set scrolloff=0

" New vertical splits open to the right or below of the current window (more intuitive layout).
set splitright
set splitbelow

" Disable mosue left clicks
" set mouse=r
set mouse=

" Searches will smartly ignore case
set ignorecase
set smartcase
set incsearch
set hlsearch

" ## Editor behaviour
" Disables the creation of swap files (used for crash recovery).
set noswapfile

" Sets the directory where persistent undo files are stored.
" Undo after closing and reopenning
set undofile
set undodir=$VIMHOME/undodir

" Sets the directory where backup files (if enabled) will be stored,
" keeping them out of your working directories.
set undodir=$VIMHOME/backupdir
