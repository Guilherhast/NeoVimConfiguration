" # Auto commands

" ## Functions
"
" Functions that will be used on autocommands

" Make invisible characters visible
function SetPythonIndent()
	set list
	set listchars=tab:┊\ ,trail:·
endfunction

" Add godot mappings
function SetGodotOptions()
	nnoremap <buffer> <F4> :GodotRunLast<CR>
endfunction

" Add C mappings and indentation
function CLangConfig()
	set cindent
	inoremap <leader>. ->
	inoremap <leader>= =>
endfunction

" ## Configuration autocomands

" Expand all folded lines
autocmd BufRead * normal zR

" Reload files after checktime
autocmd CursorHold * checktime

" ## Autocommands for diferrent filetypes

" ### Typescript

autocmd! BufNewFile,BufRead *.ts set filetype=typescript
autocmd! BufNewFile,BufRead *.ts setlocal filetype=typescript

" ### Python ( and python like )

" Set filetype for gdscript
autocmd! BufNewFile,BufRead *.gd set filetype=gdscript

" Add invisible characters
autocmd! FileType gdscript,python call SetPythonIndent()

" Create godot remaps
autocmd! FileType gdscript call SetGodotOptions()
