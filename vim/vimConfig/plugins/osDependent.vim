" # Os dependent

" This file holds configurations that are different depending on the OS type
silent if has('win32')

" ## Godot
let $GODOT3=expand("$VIMHOME/godot.exe")
let $GODOT2=expand("$VIMHOME/godot.2.exe")
let g:godot_executable=expand("$GODOT3")

" ## Airline
"
" You should installIt
" TODO: Add documentation link on how to install

set guifont=Hack:h10:cANSI

" ## Emmet
let g:user_emmet_leader_key='<C-S>'

endif
