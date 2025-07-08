"Link it into theseFolders as restNight.vim:
"vim: .vim/plugged/vim-airline-themes/autoload/airline/themes/restNight.vim
"nvim: .local/share/nvim/site/pack/packer/start/vim-airline-themes/autoload/airline/themes/
"https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt
"256 terminal colors:
"https://www.ditig.com/256-colors-cheat-sheet
let g:airline#themes#restNight#palette = {}
"TODO: Make colors equal in gui and cterm

let s:usedColors = {
	\ "Grey3": ["#080808",232],
	\ "Grey19": ["#303030",236],
	\ "Grey30": ["#4e4e4e",239],
	\ "Grey84": ["#d7d7d7",188],
	\ "Olive": ["#808000",3],
	\ "NavyBlue": ["#00005f",17],
	\ "DarkViolet": ["#af00d7",128],
	\ "Black": ["#000000",0],
	\ "White": ["#ffffff",15],
	\ "OrangeRed1": ["#ff5f00",202],
	\ "DarkOrange3": ["#af5f00",130],
	\ "Maroon": ["#800000",1],
	\ "DeepPink2": ["#ff005f",197],
	\
  \ }

function! GetColor(name)
	return s:usedColors[a:name]
endfunction

function! BuildColor(fg, bg)
	f:fg = GetColor(fg)
	f:bg = GetColor(bg)
	return [fg[0], bg[0], fg[1], bg[1]]
endfunction

echo BuildColor("Olive", "Black")
echo BuildColor("DeepPink2", "Black")
echo BuildColor("Navy", "White")
echo BuildColor("Maroon", "White")




" Colors
" Default
let s:defaultBgActive='Black'
let s:defaultBgInactive='Red'
"let s:defaultBgInactive='Grey3' "FIXME
" Search these ones make in the form of an array
" s:defaultBgInactive[1] -> grey3
" s:defaultBgInactive[0] -> 12

let s:defaultFg='Black'

"let s:defaultFgUnnimportant='Grey30' "FIXME
let s:defaultFgUnnimportant='Grey'

" Modes ( airline_section_a )

let s:label_ReplaceBg='DarkRed'
let s:label_VisualBg='White'

let s:label_NormalFg="White"
"let s:label_NormalFg='DarkViolet' "FIXME
let s:label_CommandFg='DarkMagenta'
let s:label_TerminalFg='DarkMagenta'
let s:label_InsertFg='DarkGreen'
let s:label_InsertPasteFg='Green'

" Branch ( airline_section_b )
let s:branchBg='Blue'
"let s:branchBg='NavyBlue' "FIXME
let s:branchFg='White'

" File name ( airline_section_c )
let s:file_unmodifyedFg="Grey"
"let s:file_unmodifyedFg="grey19" "FIXME
let s:file_modifyedFg="grey19"
" Use bold ( see :help attr-list )

" filetype ( airline_section_x )
let s:filetypeFg = s:defaultFgUnnimportant

" Encodign ( airline_section_y )
let s:encodingFg = s:defaultFgUnnimportant

" Position ( airline_section_z )
"let s:positionFg = 'grey84' "FIXME
let s:positionFg = 'Magenta'
let s:positionBg = 'DarkGrey'

" Warnning ( airline_section_warnning )
let s:warnningBg='DarkOrange3'
" s:warnningBg='OrangeRed1' " Alt
let s:warnningFg='Black'

" Error ( airline_section_error )
let s:errorBg='Marrom'
" s:errorBg='DeepPink2' " Alt
let s:errorFg='Black'


" Terminal colors

let s:trm_grey0 = 16
let s:trm_grey3 = 232
let s:trm_grey07 = 233 "Normalize the others
let s:trm_grey15 = 235
let s:trm_grey19 = 236
let s:trm_grey35 = 240
let s:trm_grey54 = 245
let s:trm_grey74 = 245

let s:trm_white = 255
let s:trm_black = 0

let s:trm_red3 = 124

let s:trm_orange = 94
let s:trm_olive = 3
let s:trm_yellow3 = 184

let s:trm_darkGreen = 22

let s:trm_navyBlue = 17

let s:trm_darkMagenta = 90

" Gui colors
let s:gui_grey3 = '#080808'
let s:gui_grey19 = '#303030'

let s:gui_darkMagenta = 90

"## Modes
"### Insert mode
let s:gui_dargGoldenRod = 'darkGoldenRod'
let s:gui_cornSilk = 'cornSilk1'

let s:guibg = s:gui_grey3
let s:termbg = s:trm_grey3

let s:guisep = s:gui_grey19
let s:termsep = s:trm_grey19

"Normal mode
let s:N1 = [ '#9700d7' , s:guibg , s:trm_darkMagenta  , s:termbg ]
let s:N2 = [ '#005faf' , s:guibg , s:trm_white , s:trm_navyBlue ]
let s:N3 = [ '#005f00' , s:guibg , s:trm_white  , s:trm_grey35 ]

let s:airline_a_normal = [s:label_NormalFg, s:defaultBgActive, s:label_NormalFg, s:defaultBgActive]
let s:airline_b_normal = [s:branchFg, s:branchBg, s:branchFg, s:branchBg] " TODO: Make it bold
let s:airline_c_normal = [s:file_unmodifyedFg, s:defaultBgActive, s:file_unmodifyedFg, s:defaultBgActive, "None"]
let s:airline_x_normal = [s:filetypeFg, s:defaultBgActive, s:filetypeFg, s:defaultBgActive]
let s:airline_y_normal = [s:encodingFg, s:defaultBgActive, s:encodingFg, s:defaultBgActive]
let s:airline_z_normal = [s:positionFg, s:positionBg, s:positionFg, s:positionBg]
" FIXME Missing one config after z
" FIXME Put the below ones
let s:airline_war_normal = [s:warnningFg, s:warnningBg, s:warnningFg, s:warnningBg]
let s:airline_err_normal = [s:errorFg, s:errorBg, s:errorFg, s:errorBg]

let g:airline#themes#restNight#palette.normal = {
			\ 'airline_a': s:airline_a_normal,
			\ 'airline_b': s:airline_b_normal,
			\ 'airline_c': s:airline_c_normal,
			\ 'airline_x': s:airline_x_normal,
			\ 'airline_y': s:airline_y_normal,
			\ 'airline_z': s:airline_z_normal
	\ }
			"\ 'airline_war_normal':s:airline_war_normal,
			"\ 'airline_err_normal':s:airline_err_normal

let s:airline_c_normal_modified = [s:file_unmodifyedFg, s:defaultBgActive, s:file_unmodifyedFg, s:defaultBgActive, "bold"]
let g:airline#themes#restNight#palette.normal_modified = {
	\ 'airline_c': s:airline_c_normal_modified,
\ }

let s:I1 = [ '#000000' , '#008700' , s:trm_grey0 , 28 ]
let s:I2 = [ '#005faf' , s:guibg , s:trm_white , s:trm_navyBlue ]
let s:I3 = [ '#005f00' , s:guibg , s:trm_white  , s:trm_grey35 ]

let g:airline#themes#restNight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#restNight#palette.insert_modified = copy(g:airline#themes#restNight#palette.normal_modified)

let g:airline#themes#restNight#palette.insert_paste = {
\ 'airline_a': [ s:I1[0]   , '#d78700' , s:trm_white , s:trm_navyBlue     , ''     ] ,
\ }

let g:airline#themes#restNight#palette.replace = {
\ 'airline_a': [ s:I1[0]   , '#af0000' , s:I1[2] , s:trm_red3     , ''     ] ,
\ }
let g:airline#themes#restNight#palette.replace_modified = copy(g:airline#themes#restNight#palette.normal_modified)

let s:V1 = [ '#000000' , '#d7d700' , s:trm_grey0 , s:trm_yellow3 ]
let s:V2 = [ '#005faf' , s:guibg , s:trm_navyBlue , s:trm_navyBlue ]
let s:V3 = [ '#005f00' , s:guibg , s:trm_darkGreen  , s:termbg ]
let g:airline#themes#restNight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#restNight#palette.visual_modified = copy(g:airline#themes#restNight#palette.normal_modified)

"Inactive bar
""Inactive far right
let s:IA  = [ '#4e4e4e' , s:guibg  , s:trm_grey0 , s:trm_grey54  , '' ]
""Inactive right
let s:IA2 = [ '#4e4e4e' , s:guisep , s:trm_grey07 , s:trm_grey74 , '' ]
""Inactive left
let s:IA3 = [ '#4e4e4e' , s:guisep , s:trm_grey15 , s:trm_grey74 , '' ]

let g:airline#themes#restNight#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA2, s:IA3)
"let g:airline#themes#restNight#palette.inactive_modified = copy(g:airline#themes#restNight#palette.normal_modified)
"let g:airline#themes#restNight#palette.inactive_modified = copy(g:airline#themes#restNight#palette.normal_modified)
let g:airline#themes#restNight#palette.inactive_modified = {
	\ 'airline_c': [ '#df0000' , s:guibg ,  s:trm_orange , s:trm_grey74 , ''] ,
\ }
