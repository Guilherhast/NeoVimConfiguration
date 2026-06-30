" # Airline
"
" ## Observations
"
" Warch out for locales
" LANG should be set
" I solved by editing locale.gen and locale.conf
" This link helped me
" https://gist.github.com/gdetrez/5845092
"

" ## Define the theme

let g:airline_theme="dew"

" ## Define apearance

let g:airline_powerline_fonts =  1
" let g:airline_mode_map = {}
let g:airline_mode_map = {
			\ '__' : '       ',
			\ 'n'  : 'Normal ',
			\ 'i'  : 'Insert ',
			\ 'ic' : 'Insert ',
			\ 'R'  : 'Replace',
			\ 'v'  : 'Visual ',
			\ 'V'  : 'V-Line ',
			\ '^V' : 'V-Block',
			\ 'c'  : 'Command',
			\ 's'  : 'Select ',
			\ 'S'  : 'S-Line ',
			\ '^S' : 'S-Block',
			\ 't'  : 'Term   ',
			\ }

" ## Add symbols

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" ## Windows only
" You should installIt
" TODO: Add documentation link on how to install
set guifont=Hack:h10:cANSI

function! AirlineSectionZ()
	return printf("%02d/%d : %02d", line('.'), line('$'), col('.'))
endfunction

let g:airline_section_z = '%{AirlineSectionZ()}'
