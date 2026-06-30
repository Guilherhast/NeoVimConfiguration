" # Coc

" ## Variables

" ### Make the command line heigher

set cmdheight=2
set completeopt=menuone

let g:closetag_filetypes = 'html,xhtml,phtml'

" ### List of coc plugins
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

" ## Auxiliary functions

" ### Trim code
function MyTrim() "TO DO: Make this function -> It is done sir!
	" Make it work differently for markDowns
	let saved_pos = getpos(".")
	let fts=['md','python', 'gd']
	if index(fts,&filetype) == -1
		:silent! %s/ *\([\t]\+\) */\1/g
		:silent! %s/^ *// | %s/[ \t]*$//
	endif
	:silent! nohlsearch
	:silent! call CocAction('format')
	call setpos(".", saved_pos)
endfunction

" ### Go do definition
function! s:GoToDefinition()
	if CocAction('jumpDefinition')
		return v:true
	endif

	let ret = execute("silent! normal \<C-]>")
	if ret =~ "Error" || ret =~ "错误"
		call searchdecl(expand('<cword>'))
	endif
endfunction

" ### Show documentation
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction

" ## Commands
command! -nargs=0 Format :call MyTrim()

" Folding
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Organazing imports
command! -nargs=0 Organize   :call     CocAction('runCommand', 'editor.action.organizeImport')

" ## Mappings
" Unmap the ! key
silent! unmap Q

" ### Based on commands
noremap <silent><leader>=  :Format<CR>
noremap <leader>F :Fold<CR>

nmap <space>k :call CocAction('doHover')<CR>
nmap <space>K <SID>show_documentation()<CR>

" ### Define tab behavior
inoremap <expr> <Tab> pumvisible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? coc#pum#prev(1) : coc#refresh()
inoremap <expr> <CR> pumvisible() ?  "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" : "<CR>"

" ### Jumps
let g:coc_snippet_next = '<leader>l'
let g:coc_snippet_prev = '<leader>h'

nmap Qk <Plug>(coc-diagnostic-prev)
nmap Qj <Plug>(coc-diagnostic-next)

nnoremap <silent><nowait> <space>l  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>h  :<C-u>CocPrev<CR>

" #### Jump to definitions
" Using vim default
nmap <silent>gd :call <SID>GoToDefinition()<CR>
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

" Using coc letter
nmap <silent>Qgd :call <SID>GoToDefinition()<CR>
nmap <silent>Qgy <Plug>(coc-type-definition)
nmap <silent>Qgi <Plug>(coc-implementation)
nmap <silent>Qgr <Plug>(coc-references)

" ### Coc actions
nmap Qca  <Plug>(coc-codeaction)
nmap Qf  <Plug>(coc-fix-current)

" ### Listing
" Manage extensions.
nnoremap <silent><nowait> Qla  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> Qle  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> Qlc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> Qlo  :<C-u>CocList outline<cr>
" Show snippets .
nnoremap <silent><nowait> Qlp  :<C-u>CocList snippets<cr>
" Search workspace symbols.
nnoremap <silent><nowait> Qls  :<C-u>CocList -I symbols<cr>
" Resume latest coc list.
nnoremap <silent><nowait> Qln  :<C-u>CocListResume<CR>

" ### Rename
nmap Qn <Plug>(coc-rename)
nmap Qw :CocCommand document.renameCurrentWord<CR>

" ### Formating
xmap Qf  <Plug>(coc-format-selected)
nmap Qf  <Plug>(coc-format-selected)

" ### Selection
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" ### Coc extensions
" #### Jest

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
