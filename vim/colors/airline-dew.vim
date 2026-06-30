" Vim airline documentation
"https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt
"256 terminal colors:
"https://www.ditig.com/256-colors-cheat-sheet

" Helping functions
function! GetColor(name)
	return s:usedColors[a:name]
endfunction

function! BuildColor(fg, bg, opts)
	let s:fg = GetColor(a:fg)
	let s:bg = GetColor(a:bg)
	return [s:fg[0], s:bg[0], s:fg[1], s:bg[1], a:opts]
endfunction

" Defining colors
let s:usedColors = {
	\ "Grey7": ["#121212",233],
	\ "Grey19": ["#303030",236],
	\ "Grey30": ["#4e4e4e",239],
	\ "Grey": ["#808080",8],
	\ "SlateBlue1": ["#875fff",99],
	\ "Purple": ["#8700ff",93],
	\ "Grey53": ["#878787",102],
	\ "Magenta1": ["#ff00ff",201],
	\"DarkGreen": ["#005f00",22],
	\ "Green": ["#008000",2],
	\ "SpringGreen3": ["#00af5f",35],
	\ "SpringGreen4": ["#00875f",29],
	\ "Cyan3": ["#00d7af",43],
	\ "Olive": ["#808000",3],
	\ "NavyBlue": ["#00005f",17],
	\ "DarkViolet": ["#af00d7",128],
	\ "Black": ["#000000",0],
	\ "Maroon": ["#800000",1],
	\ "White": ["#ffffff",15],
	\ "Orange4": ["#5f5f00",58],
	\ "OrangeRed1": ["#ff5f00",202],
	\ "DarkOrange3": ["#af5f00",130],
	\
\ }

" Reseting the pallete
let g:airline#themes#dew#palette = {}

" Colors
" Default colors:
let s:airl_a_default = BuildColor("Grey", "Black", "")
let s:airl_b_default = BuildColor("White", "NavyBlue", "")
let s:airl_c_default = BuildColor("Grey", "Grey7", "None")
let s:airl_x_default = BuildColor("Grey", "Black", "")
let s:airl_y_default = BuildColor("Grey19", "Black", "")
let s:airl_z_default = BuildColor("Grey53", "NavyBlue", "")
let s:airl_war_default = BuildColor("DarkOrange3", "Black", "")
let s:airl_err_default = BuildColor("Maroon", "Grey7", "")

let s:airl_c_modifyed_default = BuildColor("Orange4", "Grey7", "Bold")

" Inactive
let s:airl_x_inactive = BuildColor("Grey", "Grey19", "")
let s:airl_y_inactive = BuildColor("Grey30", "Grey19", "")
let s:airl_z_inactive = BuildColor("Grey", "Grey7", "")

" Label colors
let s:airl_label_normal = BuildColor("Purple", "Black", "")
let s:airl_label_command = BuildColor("SlateBlue1", "Black", "")
let s:airl_label_insert = BuildColor("SpringGreen4", "Black", "")
let s:airl_label_insertPaste = BuildColor("DarkGreen", "Black", "")
let s:airl_label_Visual = BuildColor("Black", "White", "")
let s:airl_label_replace = BuildColor("Maroon", "Black", "")
let s:airl_label_Terminal = BuildColor("Grey19", "Black", "")

" Setting main colors
let g:airline#themes#dew#palette.normal = {
			\ 'airline_a': s:airl_label_normal,
			\ 'airline_b': s:airl_b_default,
			\ 'airline_c': s:airl_c_default,
			\ 'airline_x': s:airl_x_default,
			\ 'airline_y': s:airl_y_default,
			\ 'airline_z': s:airl_z_default,
			\ 'airline_warning': s:airl_war_default,
			\ 'airline_error': s:airl_err_default
\ }

let g:airline#themes#dew#palette.inactive = {
			\ 'airline_a': s:airl_a_default,
			\ 'airline_b': s:airl_b_default,
			\ 'airline_c': s:airl_c_default,
			\ 'airline_x': s:airl_x_inactive,
			\ 'airline_y': s:airl_y_inactive,
			\ 'airline_z': s:airl_z_inactive,
			\ 'airline_warning': s:airl_war_default,
			\ 'airline_error': s:airl_err_default
\ }

" Defining derivated colors
let g:airline#themes#dew#palette.commandline = copy(g:airline#themes#dew#palette.normal)
let g:airline#themes#dew#palette.commandline.airline_a = s:airl_label_command

let g:airline#themes#dew#palette.insert = copy(g:airline#themes#dew#palette.normal)
let g:airline#themes#dew#palette.insert.airline_a = s:airl_label_insert

let g:airline#themes#dew#palette.insert_paste = copy(g:airline#themes#dew#palette.normal)
let g:airline#themes#dew#palette.insert_paste.airline_a = s:airl_label_insertPaste

let g:airline#themes#dew#palette.visual = copy(g:airline#themes#dew#palette.normal)
let g:airline#themes#dew#palette.visual.airline_a = s:airl_label_Visual

let g:airline#themes#dew#palette.replace = copy(g:airline#themes#dew#palette.normal)
let g:airline#themes#dew#palette.replace.airline_a = s:airl_label_replace

" Modified versions
let g:airline#themes#dew#palette.normal_modified=copy(g:airline#themes#dew#palette.normal)
let g:airline#themes#dew#palette.normal_modified.airline_c = s:airl_c_modifyed_default

let g:airline#themes#dew#palette.commandline_modified = copy(g:airline#themes#dew#palette.normal_modified)
let g:airline#themes#dew#palette.commandline_modified.airline_a = s:airl_label_command

let g:airline#themes#dew#palette.insert_modified = copy(g:airline#themes#dew#palette.normal_modified)
let g:airline#themes#dew#palette.insert_modified.airline_a = s:airl_label_insert

let g:airline#themes#dew#palette.insert_paste_modified = copy(g:airline#themes#dew#palette.normal_modified)
let g:airline#themes#dew#palette.insert_paste_modified.airline_a = s:airl_label_insertPaste

let g:airline#themes#dew#palette.visual_modified = copy(g:airline#themes#dew#palette.normal_modified)
let g:airline#themes#dew#palette.visual_modified.airline_a = s:airl_label_Visual

let g:airline#themes#dew#palette.replace_modified = copy(g:airline#themes#dew#palette.normal_modified)
let g:airline#themes#dew#palette.replace_modified.airline_a = s:airl_label_replace

let g:airline#themes#dew#palette.inactive_modified=copy(g:airline#themes#dew#palette.inactive)
let g:airline#themes#dew#palette.inactive_modified.airline_c = s:airl_c_modifyed_default
