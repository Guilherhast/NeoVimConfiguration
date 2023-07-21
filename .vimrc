	"TO DO:
	"
	"Change some charcters. Dark colors are gindencing me to read
	"<C-G> after switching tabs "Show names ( on bar below )
	"Download restNight theme and restNightAirline on install
	"
	"Show colorColumn only when 5 characters before it are written
	"And only in insert mode.
	"And only if the cursor is in the line whre it is passing
	"
	"Test telescope and map it's commands to the x keys
	"
	"Make you own color theme
	"Make the tab char grey
	"
	"Command to number sequenciate line
	"line 1 -> 3 command
	"
	"line 1
	"line 2
	"line 3
	"
	"Lern how to expand a command before using it
	"	!start cmd /k $GODOT3
	"
	"Make the So dependent commands
	"	They will run for one os and not for other
	"
	"airline
	"Make center black and right grey as in terminal
	"
	"https://www.reddit.com/r/vim/comments/bzbv98/detect_whether_caps_locks_is_on/
	"#########
	"Aready done
	"
	"Make the function to switch on/off relative numbers
	"	The one above will be used to teach better
	"
	"<leader>o to open new file with name below the cursor
	"	Maybe <space>O
	"
	"
	"App
	"An ap that let's you define colorschemes on vim
	"
	"When you are above a word. It will tell you the global group
	"The group in  the specific language
	"
	"Will prompt you for a color.
	"Only for this session
	"Will ask if you want to change for the current filetype
	"Or for the all files
	"
	"It will add to your custom file
	"Or make a custom copy of your file and prompt you to change
	"
	"
	"#########

	"Runtime Variables
	silent if has('win32')
		let $VIMHOME=expand("$HOME/vimfiles")
	else
		let $VIMHOME=expand("$HOME/.vim")
	endif


	"Necessary commands
	filetype on
	filetype plugin indent on
	au BufRead * normal zR
	syntax on
	set showcmd
	set t_Co=256


	"Auto commands for filetypes
	autocmd! BufNewFile,BufRead *.ts set filetype=typescript
	autocmd! BufNewFile,BufRead *.ts setlocal filetype=typescript

	autocmd! BufNewFile,BufRead *.gd set filetype=gdscript

	autocmd! FileType gdscript,python call SetPythonIndent()
		function SetPythonIndent()
			set list
			set listchars=tab:┊\ ,trail:·
			"set listchars=tab:┋\
			"set listchars=tab:┊\ ,trail:·,eol:↓
		endfunction

	autocmd! FileType gdscript call SetGodotOptions()
		function SetGodotOptions()
			nnoremap <buffer> <F4> :GodotRunLast<CR>
		endfunction

	autocmd! FileType c,cpp call CLangConfig()
		function CLangConfig()
			:set cindent
			:imap <leader>. ->
		endfunction

	"coc
		set cmdheight=2
		set completeopt=menuone

			"Retired after airline
		"set statusline=
		"set statusline+=" "%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)
		"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')} "FIXME: It is hiding my names

	"Avoid anoying me
		set guicursor+=a:blinkon0
		set scrolloff=0
		set belloff=all
		set hidden

		set splitright
		set splitbelow

		set langmenu=en_US
		let $LANG='en_US'


		:imap <F1> <C-o>:echo<CR>
		:nmap <F1> :echo "Asign it!"<CR>
		"Avoid entering on ex mode
		:imap <S-F2> <C-o>:echo "Assign me a task"<CR>

	"Being able to paste things
		set mouse=r


	"Reload changed files
		set autoread
		au CursorHold * checktime


	"Styling
		set background="dark"
		set shiftwidth=4
		set tabstop=4
		"Use variables
		"Would it be buggy if i 4zl?
		nnoremap zl z4l
		nnoremap zh z4h
		set nowrap


	"Easy to navigate
		set autochdir
		set wildmenu "This thing m "This thing menu
		set wildmode=longest:full,full

	"Relative numbering
		set ruler
		set number relativenumber

	let g:rnActivated = 0
	function! ActivateNumberToggle()
		let g:rnActivated = ( g:rnActivated is 0 )
		augroup numbertoggle "Make it easyly turned of
			autocmd!
			if g:rnActivated
				set relativenumber
				autocmd BufEnter,FocusGained,InsertLeave,CmdWinEnter * set relativenumber
				autocmd BufLeave,FocusLost,InsertEnter,CmdWinLeave   * set norelativenumber
			else
				set norelativenumber
			endif
		augroup END
	endfunction

	command! SwitchRN  :call ActivateNumberToggle()
	call ActivateNumberToggle()

	"Avoid swaps and keep changes in a file
		set noswapfile
		set undodir=~/.vim/undodir
		set backupdir=~/.vim/backupdir
		set undofile


	"Faster editing
		set smartindent
		set ignorecase
		set smartcase
		set incsearch
		set hlsearch


	"coc does it "Delete me: Saw 1 time
		"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
		"autocmd FileType html set foldmethod=indent
		"autocmd FileType css set omnifunc=csscomplete#CompleteCSS

	"Automatically install vimplug
	"TODO: Use the variables
if (
			\ empty(glob('~/.vim/autoload/plug.vim'))
			\ &&
			\ empty( glob('~/vimfiles/autoload/plug.vim'))
			\ )

silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

endif


"Plugins
"Try:
	"Instant markdown
call plug#begin()
	"Eye candy
	"This one has a video about making a theme
	Plug 'cocopon/pgmnt.vim'
	Plug 'folke/neodev.nvim'
	Plug 'lilydjwg/colorizer'
	"Plug 'morhetz/gruvbox'   " JS and JSX syntax
	Plug 'powerline/powerline-fonts'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}


	"Removed because is messing my \\
	"Findout why and put it back
	"Plug 'mg979/vim-visual-multi', {'branch': 'master'}

	"Make a trim function "It is done sir!

	"This is to enable the typescrip highlight syntax prefix
	"Try to get a generic extension but like this to js,css,and so on
	"https://pintovim.dev/
	"Make the site work
	"Plug 'HerringtonDarkholme/yats.vim'

	"Faster editing
	Plug 'mattn/emmet-vim'
	"Plug 'Townk/vim-autoclose'

	Plug 'hashivim/vim-terraform'
	"I deceided to bet in tailwind
	"Plug 'jvanja/vim-bootstrap4-snippets'

	"Languages
	Plug 'pangloss/vim-javascript'    " JavaScript support
	"Plug 'leafgarland/typescript-vim' " TypeScript syntax
	Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

	Plug 'jamestthompson3/vim-jest'
	Plug 'claco/jasmine.vim'
	"TODO:
	"Make so I am able to when in <app-menu>
	"Hit gd and go to the component
	Plug 'burnettk/vim-angular'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}


	Plug 'calviken/vim-gdscript3'
	Plug 'habamax/vim-godot' "Need to run CocConfig See on github

	Plug 'tpope/vim-rails'

	Plug 'jdhao/better-escape.vim'


	"Navigation
		"Between files
		Plug 'jremmen/vim-ripgrep'
		"Plug 'ctrlpvim/ctrlp.vim'
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'
		"Watch it
		"https://www.youtube.com/watch?v=qgG5Jhi_Els
		"https://www.youtube.com/watch?v=DpURGnb4Fyk
		"Inside file
		Plug 'justinmk/vim-sneak'

	"File management
	Plug 'tpope/vim-fugitive'


	"Things to try later

	"I am happy with CtrlP
	"Try telescope
	"Plug telescope

	"try this file manager
	"Plug 'francoiscabrol/ranger.vim' //File manager
	Plug 'OmniSharp/omnisharp-vim'
call plug#end()

"Setting up the colors
	"silent!	colorscheme windNight
	"silent!	colorscheme delek-custom
	if has('gui_running')
		silent!	colorscheme koehler
	else
		silent!	colorscheme restNight
	endif
	"silent!	colorscheme iceberg.vim

"Why if you can do it in your color scheme?
	highlight LineNr guifg=#404040
	highlight LineNr ctermfg=darkgrey
	highlight SignColumn ctermbg=none

"Global variables TODO: Put if in the extensions
	"Vim
		"let g:netrw_winsize = 25
		"let g:netrw_browse_split = 2
	"TODO:
	"Put in alphabetical order
	"Airline
		"source $VIMHOME/configs/restNight.vim
		let g:airline_theme="restNight"

		"This link helped me
		"Warch out for locales
		"LANG should be set
		"I solved by editing locale.gen and locale.conf
		"https://gist.github.com/gdetrez/5845092
		let g:airline_powerline_fonts =  1
		let g:airline_mode_map = {}
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
		if !exists('g:airline_symbols')
			let g:airline_symbols = {}
		endif
	"Coc "TODO: make coc-emmet complete
					"Utils
					"Command line
					"Languages
					"Web development
					"Game development
					"TODO: Lern how to insert a comment down there
					"Tailwind maybe one day will substitute bootstrap4
								"\ 'coc-phpls',
					"The one below should be configured before.
								"\ 'coc-spell-checker',
					"This one is good but 'tudo tá errado'
					"At least in my markdown I do not want it.
					"I Will run coc-install and uninstall when I need.
								"\ 'coc-markdownlint',
								"\ 'coc-python',
					"If psalm is not good put phpls back
					let g:coc_global_extensions = [
								\ 'coc-snippets',
								\ 'coc-pairs',
								\ 'coc-just-complete',
								\ 'coc-sh',
								\ 'coc-vimlsp',
								\ 'coc-powershell',
								\ 'coc-pyright',
								\ 'coc-omnisharp',
								\ 'coc-sql',
								\ 'coc-html',
								\ 'coc-emmet',
								\ 'coc-css',
								\ 'coc-tailwindcss',
								\ 'coc-json',
								\ 'coc-tsserver',
								\ 'coc-angular',
								\ 'coc-jest',
								\ 'coc-inline-jest',
								\ 'coc-psalm',
								\ 'coc-godot',
								\ 'coc-groovy',
								\ 'coc-explorer',
								\ 'coc-clangd'
								\ ]

					let g:closetag_filetypes = 'html,xhtml,phtml'
	"CtrP
		"let g:ctrlp_working_path_mode = 'r'
		"let g:ctrlp_use_caching = 1
		"let g:ctrlp_root_markers = ['.ctrlp']
		"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'

	"Emmet
		let g:user_emmet_leader_key='<f1>'
		let g:user_emmet_next_key = '<leader>l'
		let g:user_emmet_previous_key = '<leader>h'
		"If ç is lead then
		"inoremap \ç ç
		"inoremap ço ção
		"inoremap çe ções

		"let g:user_emmet_leader_key='ç'
	"InstantMarkDown
		let g:instant_markdown_autostart = 0
	"OmniSharp
	"let g:ale_linters = {
	"	\ 'cs': ['OmniSharp']
	"	\}
	let g:OmniSharp_server_use_mono = 1
	"Use on .bashrc
	"export FrameworkPathOverride=~/.config/coc/extensions/coc-omnisharp-data/server/omnisharp/
	"Sneak
		let g:sneak#label = 1




	"Rg
		if executable('rg')
			"TODO
			"Let ctrlp root
			"let g:rg_derive_root='true'
		endif
		nnoremap <leader>/ :Rg
		nnoremap <leader>? :Rg -i
		:nmap <leader>Q :Rg -i



"Mappings
	"InserMode
		"Chage mode
		inoremap çç <Esc>
		vnoremap çç <Esc>

		imap <c-s> <Esc>:w<CR>a
		"Wrapping

			"inoremap <leader>; $a;<esc>

			"TODO try auto pairs
			inoremap {<CR> {<CR>}<ESC>O
			inoremap {;<CR> {<CR>};<ESC>O
		"Moviment
			"Put the <C-S-l> and friends here
			inoremap <C-e> <c-o>$
			inoremap <C-h> <Left>
			inoremap <C-j> <Down>
			inoremap <C-k> <Up>
			inoremap <C-l> <Right>
			"call search('\u','b')
			"call search('\u','b')


	"Command mode
		cnoremap <C-a> <C-b>
	"Normal mode
		nmap <c-s> :w<CR>
	"All modes
		map <f6> :nohlsearch<ENTER>

	"<leader> mappings
		"Move lines FIXME
		"https://vi.stackexchange.com/questions/2350/how-to-map-alt-key
		"Whey you have reputation coment there how to solve the esc problem
		"for i in range(97,122)
		"	let c = nr2char(i)
		"	exec "map \e".c." <M-".c.">"
		"	exec "map! \e".c." <M-".c.">"
		"endfor

			"CammelCaseSearch inprovedVersion alsoin/MyFolder/MyFile.txt
			"function().return vector[].property (myText) [vectorProperty]
			"May be inproved. Also searh begning of workd
			let searchtext='\u\|[./\[ ()_]\a'
			"let searchtext='\u\|[ ().,/-{}]\a'
			nnoremap <C-S-l> :<c-u>call search(searchtext, 'e')<cr>
			nnoremap <C-S-h> :<c-u>call search(searchtext,'be')<cr>
			imap <C-S-l> <c-o><C-S-l>
			imap <C-S-h> <c-o><C-S-h>
			imap <C-Del> X<esc>ce

			"nnoremap <C-S-n> :<c-u>call search('<[^/?]*>','be')<cr>
			"nnoremap <C-S-p> :<c-u>call search('</.*>')<cr>
			"nnoremap <C-S-n> :<c-u>echo "C-S-n"
			"nnoremap <C-S-p> :<c-u>echo "C-S-p"
			"imap <C-S-n> <c-o><C-S-n>
			"imap <C-S-p> <c-o><C-S-p>

			nnoremap <A-j> :m .+1<CR>==
			nnoremap <A-k> :m .-2<CR>==
			inoremap <A-j> <Esc>:m .+1<CR>==gi
			inoremap <A-k> <Esc>:m .-2<CR>==gi
			vnoremap <A-j> :m '>+1<CR>gv=gv
			vnoremap <A-k> :m '<-2<CR>gv=gv
			"vnoremap <A-k> :move '<-2<CR>gv=gv
			"Move with leader
			nnoremap <leader>j :wincmd j<CR>
			nnoremap <leader>k :wincmd k<CR>
			nnoremap <leader>l :wincmd l<CR>
			nnoremap <leader>h :wincmd h<CR>
			nnoremap <leader>r :wincmd r<CR>

			"It is not working
			nnoremap <leader>J :wincmd J<CR>
			nnoremap <leader>K :wincmd K<CR>
			nnoremap <leader>L :wincmd L<CR>
			nnoremap <leader>H :wincmd H<CR>

			"nnoremap <leader>J j
			"nnoremap <leader>K k


			" "testFile.f"
			" "f.js"
			nnoremap <leader>f <C-w>gf
			nnoremap <space>gf :e <cfile><CR>
			nnoremap <space>gvf :vsp <cfile><CR>
			nnoremap <space>gsf :sp <cfile><CR>
			nnoremap <space>gtf :tabe <cfile><CR>

		"Buffers
			nnoremap <silent><Leader>bs :buffers<cr>

		"Move between tabs
			nnoremap <silent><Leader>td :tab split<CR>
			nnoremap <silent><Leader>tn :tabe <CR>
			nnoremap <silent><Leader>to :wincmd T <CR>

			"I got happy by thinking on this
			"Thank to God!
			nnoremap <silent><Leader>_ :split <CR>
			nnoremap <silent><Leader>~ :split <CR>
			nnoremap <silent><Leader>\| :vsplit <CR>

			nnoremap <silent><Leader>sv :vsplit <CR>
			nnoremap <silent><Leader>sh :split <CR>



			nnoremap <leader>, gT
			nnoremap <leader>. gt

			function! SynStack ()
				for i1 in synstack(line("."), col("."))
					let i2 = synIDtrans(i1)
					let n1 = synIDattr(i1, "name")
					let n2 = synIDattr(i2, "name")
					echo n1 "->" n2
				endfor
				"let s = synID(line('.'), col('.'), 1) | echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')
			endfunction
			nnoremap <space>ss :call SynStack()<CR>


			"Mark ms 's
			function! NextLevel ()
					echo "nnoremap <space>ja :call  CocAction('runCommand', 'jest.projectTest')<CR>"
					echo "nnoremap <space>js :call CocAction('runCommand', 'jest.singleTest')<CR>"
					echo "nnoremap <space>jf :call  CocAction('runCommand', 'jest.fileTest', ['%'])<CR>"
					echo "nnoremap <leader>/ :Rg"
					echo "nnoremap <leader>? :Rg -i"
					echo "tnoremap <c-n> <c-w>N"
					echo "tnoremap <c-N> <c-w>N"
					echo "nnoremap <space>T :terminal<CR>"
					echo "nnoremap <space>V :vertical terminal<CR>"
					echo "Mark A"
					echo "<F1>n next entry point"
					echo "Fugitive"
					echo "= on status"
					echo "Çç çgsblc"
					echo "<space>G"
					echo "g <C-a> line increment"
					echo ""
					"Change the empty echo to an echo with the command bellow
					"yypj^d$2k\i"Pjjddk

			endfunction
			nnoremap <space><space> :call NextLevel()<CR>
			"Moving tabs and between them

			"nnoremap <leader>tmh :tabm -1<CR> "Do it
			"TODO: CountIt ( use number before calling command )
			nnoremap <leader>mh :tabm -1<CR>
			nnoremap <leader>ml :tabm +1<CR>
			nnoremap <leader>m, :tabm -1<CR>
			nnoremap <leader>m. :tabm +1<CR>

			"nnoremap <leader>tm1 :tabm0<CR> "Does what? " Do it
			"nnoremap <leader>m0 :tabm0<CR> "Does what?
			nnoremap <leader>m1 :tabm0<CR>
			nnoremap <leader>m2 :tabm2<CR>
			nnoremap <leader>m3 :tabm3<CR>
			nnoremap <leader>m4 :tabm4<CR>
			nnoremap <leader>m5 :tabm5<CR>
			nnoremap <leader>m6 :tabm6<CR>
			nnoremap <leader>m7 :tabm7<CR>
			nnoremap <leader>m8 :tabm8<CR>
			nnoremap <leader>m9 :tabm9<CR>

			nnoremap <leader>1 1gt
			nnoremap <leader>2 2gt
			nnoremap <leader>3 3gt
			nnoremap <leader>4 4gt
			nnoremap <leader>5 5gt
			nnoremap <leader>6 6gt
			nnoremap <leader>7 7gt
			nnoremap <leader>8 8gt
			nnoremap <leader>9 9gt

			" Switch to last-active tab
			if !exists('g:Lasttab') "Shouldn't it be a function?
				let g:Lasttab = 1
				let g:Lasttab_backup = 1
			endif
			autocmd! TabLeave * let g:Lasttab_backup = g:Lasttab | let g:Lasttab = tabpagenr()
			autocmd! TabClosed * let g:Lasttab = g:Lasttab_backup
			nmap <silent> <Leader>t' :exe "tabn " . g:Lasttab<cr>
			nmap <silent> <Leader>' :exe "tabn " . g:Lasttab<cr>
			nmap <silent> <Leader>- :exe "tabn " . g:Lasttab<cr>

			"Mark t
			"Terminal remaps
			tnoremap <c-n> <c-w>N
			tnoremap <c-N> <c-w>N

			nnoremap <space>T :terminal<CR>
			nnoremap <space>V :vertical terminal<CR>

			command Vt vertical terminal

		"Open folder
			"One day I may use it:
			"nnoremap <leader>ev :wincmd v<bar> :Ex <bar> <C-W>H:vertical resize 30<Cr>

		"Wrapping
			nnoremap <Leader>q" "5ciw""<Esc>P
			nnoremap <Leader>q' "5ciw''<Esc>P
			nnoremap <Leader>qq "5ciw``<Esc>P
			nnoremap <Leader>qb "5ciw``<Esc>P

			nnoremap <Leader>qp "5ciw()<Esc>P
			nnoremap <Leader>qc "5ciw{}<Esc>P
			nnoremap <Leader>qx "5ciw[]<Esc>P
			nnoremap <Leader>qt "5ciw<><Esc>P


			nnoremap <Leader>qa "5ciw{{}}<Esc>hP
			nnoremap <Leader>qm "5ciw[()]<Esc>hP

			nnoremap <Leader>q1 "5ciw()<Esc>P
			nnoremap <Leader>q2 "5ciw[]<Esc>P
			nnoremap <Leader>q3 "5ciw{}<Esc>P
			nnoremap <Leader>q4 "5ciw<><Esc>P
			nnoremap <Leader>q5 "5ciw{{}}<Esc>hP
			nnoremap <Leader>q6 "5ciw[()]<Esc>hP

			" Teste

			"Read and tellme what does that do "It dows something!!!
			nnoremap <Leader>qd "5daW"=substitute(@@,"'\\\|\"","","g")<CR>P
		"Visual

			xnoremap <Leader>q" "5xi""<Esc>P
			xnoremap <Leader>q' "5xi''<Esc>P

			"Parentesis colchete xave and tag
			xnoremap <Leader>qp "5xi()<Esc>P
			xnoremap <Leader>qc "5xi[]<Esc>P
			xnoremap <Leader>qx "5xi{}<Esc>P
			xnoremap <Leader>qt "5ciw<><Esc>P

			xnoremap <Leader>q1 "5xi()<Esc>P
			xnoremap <Leader>q2 "5xi[]<Esc>P
			xnoremap <Leader>q3 "5xi{}<Esc>P
			xnoremap <Leader>q4 "5xi<><Esc>P
			xnoremap <Leader>q5 "5xi{{}}<Esc>hP
			xnoremap <Leader>q6 "5xi[()]<Esc>hP


			xnoremap <Leader>qa "5xi{{}}<Esc>hP
			xnoremap <Leader>qm "5xi[()]<Esc>hP

			"Read and tellme what does that do
			xnoremap <Leader>qd "5xi"=substitute(@@,"'\\\|\"","","g")<CR>P

		"Copy and paste ( My idieas )
			nnoremap <silent> <Leader>p "*p
			nnoremap <silent> <Leader>P "*P

			nnoremap <silent> <Leader>ç "+p
			nnoremap <silent> <Leader>Ç "+P

			nnoremap <silent> <Leader>y "+y
			vnoremap <silent> <Leader>y "+y
			nnoremap <silent> <Leader>G gg"+yG''

			nnoremap <leader>i' "_yi'
			nnoremap <leader>i" "_yi"
			nnoremap <leader>i` "_yi`
			nnoremap <leader>i( "_yi(
			nnoremap <leader>i{ "_yi{
			nnoremap <leader>i[ "_yi[


			"Primeagen ideia
			vnoremap <leader>p "_dP
			vnoremap <leader>ç "_d"+P
		"Working faster
			nnoremap <silent> <Leader>z zt0
			nnoremap <silent> <Leader>\ :nohlsearch \| echo<CR>
			nnoremap <leader><cr>  :pwd<cr>

			"TODO
			"Change to the vimrc variable
			nnoremap <silent><leader>% :source ~/.vimrc<CR>
			nnoremap <silent><leader>¨ :edit ~/.vimrc<CR>

		"Navigation
			nnoremap <silent> <Leader>n :n<CR>
			nnoremap <silent> <Leader>N :N<CR>

		"Coc mappings TODO: Put on if on this
		"https://medium.com/swlh/ultimate-vim-typescript-setup-35b5ac5c8c4e
			" Use <Tab> and <S-Tab> for navigate completion list
			" TODO: Fix the problems I am facing with it


				"Read the documentation and solve the necessity for the whole
				"word
				"You may also findout why the typescript are not like this
				"TODO:
				"When hit tab write emmet abreviation
				"When hit tab expand emmet abreviation
				"To expand a snipped I need to wait the pun to be visible
				inoremap <expr> <Tab> pumvisible() ? coc#pum#next(1) : "\<Tab>"
				inoremap <expr> <S-Tab> pumvisible() ? coc#pum#prev(1) : coc#refresh()
				inoremap <expr> <CR> pumvisible() ?  "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : "<CR>"
				let g:coc_snippet_next = '<leader>l'
				let g:coc_snippet_prev = '<leader>h'

				command Tth :s/<\(\/\?\)title>/<\1h1>/g

			"Remap keys for applying codeAction to the current line.
				nmap <space>ac  <Plug>(coc-codeaction)
			" Apply AutoFix to problem on the current line.
				nmap <space>qf  <Plug>(coc-fix-current)
			" GoTo code navigation.
				nmap <silent>[g <Plug>(coc-diagnostic-prev)
				nmap <silent>]g <Plug>(coc-diagnostic-next)

				nmap <silent><space>n <Plug>(coc-diagnostic-next)
				nmap <silent><space>N <Plug>(coc-diagnostic-prev)

				function! s:GoToDefinition()
					if CocAction('jumpDefinition')
						return v:true
					endif

					let ret = execute("silent! normal \<C-]>")
					if ret =~ "Error" || ret =~ "错误"
						call searchdecl(expand('<cword>'))
					endif
				endfunction

				nmap <silent> gd :call <SID>GoToDefinition()<CR>
				"nnoremap <silent><space>gd gd
				nmap <silent>gy <Plug>(coc-type-definition)
				nmap <silent><space>gi <Plug>(coc-implementation)
				nmap <silent>gr <Plug>(coc-references)



				"Show documentation
				nmap <space>k :call CocAction('doHover')<CR>
				nmap <space>K <SID>show_documentation()<CR>
				function! s:show_documentation()
					if (index(['vim','help'], &filetype) >= 0)
						execute 'h '.expand('<cword>')
					elseif (coc#rpc#ready())
						call CocActionAsync('doHover')
					else
						execute '!' . &keywordprg . " " . expand('<cword>')
					endif
				endfunction

				" Manage extensions.
				nnoremap <silent><nowait> <space>ca  :<C-u>CocList diagnostics<cr>
				" Manage extensions.
				nnoremap <silent><nowait> <space>ce  :<C-u>CocList extensions<cr>
				" Show commands.
				nnoremap <silent><nowait> <space>cc  :<C-u>CocList commands<cr>
				" Find symbol of current document.
				nnoremap <silent><nowait> <space>co  :<C-u>CocList outline<cr>
				" Show snippets .
				nnoremap <silent><nowait> <space>cp  :<C-u>CocList snippets<cr>
				" Search workspace symbols.
				nnoremap <silent><nowait> <space>cs  :<C-u>CocList -I symbols<cr>
				" Resume latest coc list.
				nnoremap <silent><nowait> <space>cn  :<C-u>CocListResume<CR>
				" Do default action for next item.
				nnoremap <silent><nowait> <space>cl  :<C-u>CocList extensions<CR>
				nnoremap <silent><nowait> <space>l  :<C-u>CocNext<CR>
				" Do default action for previous item.
				nnoremap <silent><nowait> <space>h  :<C-u>CocPrev<CR>

				"Coc utils
				nmap <space>rn <Plug>(coc-rename)
				xmap <space>f  <Plug>(coc-format-selected)
				nmap <space>f  <Plug>(coc-format-selected)
				nmap <space>cn :CocCommand document.renameCurrentWord<CR>

				"If af formating
				xmap if <Plug>(coc-funcobj-i)
				omap if <Plug>(coc-funcobj-i)
				xmap af <Plug>(coc-funcobj-a)
				omap af <Plug>(coc-funcobj-a)
				xmap ic <Plug>(coc-classobj-i)
				omap ic <Plug>(coc-classobj-i)
				xmap ac <Plug>(coc-classobj-a)
				omap ac <Plug>(coc-classobj-a)
		"CtrlP
		"fzf
		nnoremap <C-p> :Files<CR>
		nnoremap <C-ç> :GFiles<CR>
		nnoremap çç :Files<CR>
		nnoremap Çç :Files!<CR>
		nnoremap çg :GFiles<CR>
		nnoremap Çg :GFiles!<CR>
		nnoremap Çs :GFiles!<CR>
		nnoremap çb :Buffers<CR>
		nnoremap Çb :Buffers!<CR>
		nnoremap çl :Lines<CR>
		nnoremap çc :BLines<CR>
		nnoremap Çl :Lines<CR>
		nnoremap Çc :BLines<CR>
		"Fugitive
			"nnoremap <leader><cr>  :GdiffsplitM<cr>
			"nnoremap <leader>+  :GWrite<cr>
			"nnoremap <leader>-  :Gstatus<cr>
			nnoremap <leader><backspace>  :GRename<cr>

			nnoremap <leader>gr  :GRename<cr>
			nnoremap <leader>gw  :Gwrite<cr>

			nnoremap <leader>gs :tab G<CR>
			nnoremap <leader>gv :Gvdiffsplit!<CR>
			nnoremap <leader>gh :Gdiffsplit!<CR>
			nnoremap <leader>gl :diffget //3<CR>
			nnoremap <leader>gh :diffget //2<CR>

			"nnoremap <leader>_  :Gstatus<cr>
		"Sneak
			map f <Plug>Sneak_f
			map F <Plug>Sneak_F
			map t <Plug>Sneak_t
			map T <Plug>Sneak_T
		"Vim Angular "TODO: Only use for ts files
			"nmap <leader>ss :A
			"nmap <leader>sr :AngularRunSpec
			"nmap <leader>sb :AngularRunSpecBlock
		"lua: Parei aqui remap line 151
		"Jest
			" Run jest for current project
			command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')
			" Run jest for current file
			command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])
			" Init jest in current cwd, require global jest command exists
			command! JestInit :call CocAction('runCommand', 'jest.init')

			" Run jest for current test
			nnoremap <space>ja :call  CocAction('runCommand', 'jest.projectTest')<CR>
			nnoremap <space>js :call CocAction('runCommand', 'jest.singleTest')<CR>
			nnoremap <space>jf :call  CocAction('runCommand', 'jest.fileTest', ['%'])<CR>




"Commands
	"Exiting fast
		command! BS	buffers
		command! Bs	buffers
		command! -bar -bang WQ wq<bang>
		command! -bar -bang Wq wq<bang>
		command! -bar -bang W w<bang>
		command! -bar -bang Q q<bang>
		command! -bar -bang Qa qa<bang>
		command! -bar -bang QA qa<bang>
		"Todo make it work
		"command! W! w!
		"command! WQ! wq!
		"command! Wq! wq!
		"command! Q! q!
	"Git commands
	"Fugitive got the job
		"command! Gdf :!git diff %
		"command! GDf :!git diff %
		"command! GDF :!git diff %

	"Fugitive
		command! GW :Gw
	"Coc
		" Preper :Format to work with airline
		function MyTrim() "TO DO: Make this function -> It is done sir!
			" Make it work differently for markDowns
			let save_pos = getpos(".")
			let fts=['md','python', 'gd']
			if index(fts,&filetype) == -1
				:silent! %s/ *\([\t]\+\) */\1/g
				:silent! %s/^ *// | %s/[ \t]*$//
			endif
			:silent! nohlsearch
			:silent! call CocAction('format')
			call setpos(".", save_pos)
		endfunction
		" Add `:Format` command to format current buffer.
		command! -nargs=0 Format :call MyTrim()
		noremap <silent><leader>=  :Format<CR>

		" Add `:Fold` command to fold current buffer.
		command! -nargs=? Fold :call     CocAction('fold', <f-args>)
		noremap <leader>F :Fold<CR>
		" Add `:OR` command for organize imports of the current buffer.
		command! -nargs=0 Organize   :call     CocAction('runCommand', 'editor.action.organizeImport')

	command! -nargs=? Term :execute printf("!terminator --working-directory=%s", getcwd())

silent if has('win32')

	"Put with So dependent
	command! -nargs=? Term :execute printf("!start cmd /c cd %s", getcwd())

	"Setting variables

		"System
			"$VIMRUNTIME\mswin.vim
			"É difícil escrever sem os carácteres latinos. Preciso tomar uma ação.
			set encoding=utf-8
			set fileencoding=utf-8
			"Use to read files and lines
			set isfname-=:
			"Get back the control
				set nocp
				set backspace=2
				set backspace=indent,eol,start whichwrap+=<,>,[,]
				fixdel

		"Extentions
			"Godot
			"FIXME: Looks like made in a hurry
			"let g:godot_executable="c:/Program Files/Godot/"
			"let g:godot_executable=expand("$VIMHOME/godot.exe")
			let $GODOT3=expand("$VIMHOME/godot.exe")
			let $GODOT2=expand("$VIMHOME/godot.2.exe")
			let g:godot_executable=expand("$GODOT3")

			"PowerLine
				"You should installIt
				set guifont=Hack:h10:cANSI

			"Emmet
				"Emmet is not acepting ç now.
				"Verifiy it from time to time
				let g:user_emmet_leader_key='<C-S>'


	"Use to gen an id while editin wt config
	command! GenUid .!powershell "[guid]::NewGuid().ToString()"



		noremap <C-V> <C-V>
	"TODO: Discover what it does and describe here
		source  $VIMRUNTIME/delmenu.vim
		source  $VIMRUNTIME/menu.vim
endif

