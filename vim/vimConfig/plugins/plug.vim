" # Plug configurations

" ## Installing plug if it is not installed
if empty(glob($PLUGFILE))
    " Execute the download command
    silent execute '!' . $PLUGCMD

    " Source plug.vim manually so PlugInstall becomes available
    execute 'source' fnameescape($PLUGFILE)

    " Install plugins after sourcing
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ## Defining installed plugins
call plug#begin()

	" ### Interface apearence
	Plug 'lilydjwg/colorizer'
	Plug 'powerline/powerline-fonts'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" ### External tools
	Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

	" ### Languages

	" #### IAAC
	Plug 'hashivim/vim-terraform'

	" #### Web

	" ##### Front
	Plug 'mattn/emmet-vim'
	Plug 'pangloss/vim-javascript'    " JavaScript support
	Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

	Plug 'jamestthompson3/vim-jest'
	Plug 'claco/jasmine.vim'

	Plug 'burnettk/vim-angular'

	" ##### Back
	Plug 'tpope/vim-rails'

	" #### Gamming
	Plug 'calviken/vim-gdscript3'
	Plug 'habamax/vim-godot' "Need to run CocConfig See on github

	Plug 'OmniSharp/omnisharp-vim' " Use for unity


	" ### Add features

	" #### Increase editing speed

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'justinmk/vim-sneak'

	Plug 'jdhao/better-escape.vim'

	" #### Managing files

	Plug 'tpope/vim-fugitive'

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'jremmen/vim-ripgrep'

call plug#end()

" ## Ereasing variables

unlet $PLUGFILE
unlet $PLUGCMD
