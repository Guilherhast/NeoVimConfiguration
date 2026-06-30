" # Vimrc

" ## Functions

let VIMHOME = ""

function! ExpandSource(file)
  " Build the full path by concatenating VIMHOME env variable and the file argument
  let filepath = expand( $VIMHOME . '/vimConfig/' . a:file)
  " echo filepath
  " Source the file at the constructed path
  execute 'source' filepath
endfunction

" ## Os dependent

if has('win32') || has('win64')
	" Variables for source folder
	let $VIMHOME=expand("$HOME/vimfiles") --TODO Change on definitive
	call ExpandSource("personal/windows.vim")

	" Variables for plugin
	let $PLUGFILE = expand('~/vimfiles/autoload/plug.vim')
	let $PLUGCMD = 'powershell -Command "New-Item -ItemType Directory -Force -Path (Split-Path ''' . $PLUGFILE . '''); Invoke-WebRequest -Uri https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -OutFile ''' . $PLUGFILE . ''' -UseBasicParsing"'
else
	" Variables for source folder
	let $VIMHOME=expand("$HOME/.vim")
	call ExpandSource("personal/Linux.vim")

	" Variables for plugin
	let $PLUGFILE = expand('~/.vim/autoload/plug.vim')
    let $PLUGCMD = 'curl -fLo ' . shellescape($PLUGFILE) . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" ## Sourcing files

call ExpandSource("personal/index.vim")
call ExpandSource("plugins/index.vim")
