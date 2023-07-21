"Link it into theseFolders as restNight.vim:
"vim: .vim/plugged/vim-airline-themes/autoload/airline/themes/restNight.vim
"nvim: .local/share/nvim/site/pack/packer/start/vim-airline-themes/autoload/airline/themes/
"256 terminal colors:
"https://www.ditig.com/256-colors-cheat-sheet
let g:airline#themes#restNight#palette = {}
"TODO: Make colors equal in gui and cterm


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
let s:guibg = s:gui_grey3
let s:termbg = s:trm_grey3

let s:guisep = s:gui_grey19
let s:termsep = s:trm_grey19

"Normal mode
let s:N1 = [ '#9700d7' , s:guibg , s:trm_darkMagenta  , s:termbg ]
let s:N2 = [ '#005faf' , s:guibg , s:trm_white , s:trm_navyBlue ]
let s:N3 = [ '#005f00' , s:guibg , s:trm_white  , s:trm_grey35 ]

let g:airline#themes#restNight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#restNight#palette.normal_modified = {
\ 'airline_c': [ '#df0000' , s:guibg , s:trm_olive , s:trm_grey35    , '' ] ,
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
