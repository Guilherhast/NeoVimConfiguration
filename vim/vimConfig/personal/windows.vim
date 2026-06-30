" # Windows dependent configuration

" ## Interface

source  $VIMRUNTIME/delmenu.vim " Clear existing menus
source  $VIMRUNTIME/menu.vim " Load the default menu

" ## System

" ### Fix latin characters encoding

" É difícil escrever sem os carácteres latinos. Preciso tomar uma ação.
set encoding=utf-8
set fileencoding=utf-8

" ### Solve compatibility issues with file names
set isfname-=:

" ### Solve compatibility issues with keys
set nocp
set backspace=2
set backspace=indent,eol,start whichwrap+=<,>,[,]
" TODO
" fixdel " Remove on vim

" ## Remaps

noremap <C-V> <C-V>

" ## Commands

" ### Open a new command prompt

command! -nargs=? Term :execute printf("!start cmd /k cd %s", getcwd())

" ### Generate a random id

command! GenUid .!powershell "[guid]::NewGuid().ToString()"
