" # Commands
"
" User commands for performing tasks

" ## Functions
" Functions that will be used for user commands

" Easily turn on and off relative numbering
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

" ## Commands

" Easily turn on and off relative numbering
command! SwitchRN  :call ActivateNumberToggle()
call ActivateNumberToggle()

" ## Accept typos

" ### Exiting
command! -bar -bang WQ wq<bang>
command! -bar -bang Wq wq<bang>
command! -bar -bang W w<bang>
command! -bar -bang Q q<bang>
command! -bar -bang Qa qa<bang>
command! -bar -bang QA qa<bang>

" ### Buffers
command! BS	buffers
command! Bs	buffers

" Fast edit
command Tth :s/<\(\/\?\)title>/<\1h1>/g
