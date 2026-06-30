" # Remaps
"
" Remaps for a better usage

" ## Functions

" ### Tab indexer
function s:TabIndexerInitialize()
	let g:LastTab_backup = 1
	let g:LastTab = 1
endfunction

function s:TabIndexerUpdateVisitedTab(number)
		let g:LastTab_backup = g:LastTab
		let g:LastTab = a:number
endfunction

function s:TabIndexerCloseTab()
	if g:LastTab_backup > tabpagenr()
		let g:LastTab_backup -= 1
	endif
	let g:LastTab = g:LastTab_backup
endfunction

function s:TabIndexerLeaveTab()
	call s:TabIndexerUpdateVisitedTab(tabpagenr())
endfunction

call s:TabIndexerInitialize()

autocmd! TabLeave * call s:TabIndexerLeaveTab()
autocmd! TabClosed * call s:TabIndexerCloseTab()

" ## Disabling acidental keys

" Prevent from opening the help menu
inoremap <F1> <C-o>:echo<CR>
nnoremap <F1> :echo "Asign it!"<CR>

" ## Calling commands
nnoremap <silent> <Leader>\ :nohlsearch \| echo<CR>
nnoremap <leader><cr>  :pwd<cr>

" ## Scrolling

" Make vertical scroll faster
nnoremap zl z4l
nnoremap zh z4h
nnoremap <silent> <Leader>z zt0

"
inoremap <leader>; $a;<esc>

" ## Navigation
" ### Terminal like
" Make ctrl go do start
cnoremap <C-a> <C-b>

" ### Keys for arrows
inoremap <C-e> <c-o>$
imap <c-s> <Esc>:w<CR>a

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"function().return vector[].property (myText) [vectorProperty]
"May be inproved. Also searh begning of word

let searchtext='\u\|[./\[ ()_]\a'

" #### CammelCaseSearch
" ##### Normal
nnoremap <C-S-l> :<c-u>call search(searchtext, 'e')<cr>
nnoremap <C-S-h> :<c-u>call search(searchtext,'be')<cr>

" ##### Insert
imap <C-S-l> <c-o><C-S-l>
imap <C-S-h> <c-o><C-S-h>

imap <C-Del> X<esc>ce


" ## Text editing

" Normal mode
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
'
" Inserrt mode
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" Visual mode
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" ### Openning files

" ### Test strings 
" "testFile.f"
" "f.js"

" Current window
nnoremap <silent><Leader>to :wincmd T <CR>
" Duplicate
nnoremap <silent><Leader>td :tab split<CR>
" New buffer
nnoremap <silent><Leader>tn :tabe <CR>

" ### Buffers
nnoremap <silent><Leader>bs :buffers<cr>


" ## Open files

" ### Current tab
nnoremap <leader>f <C-w>gf

" ### Create file
nnoremap <space>gf :e <cfile><CR>

" ### Split

nnoremap <space>gvf :vsp <cfile><CR> " Vertical
nnoremap <space>gsf :sp <cfile><CR> " Horizontal

" ### New tab
nnoremap <space>gtf :tabe <cfile><CR>

" ### Chage buffer
nnoremap <silent> <Leader>n :n<CR>
nnoremap <silent> <Leader>N :N<CR>

" ## Windows commands

" ### Navigate between windows
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>r :wincmd r<CR>

" ### Move windows
nnoremap <leader>J :wincmd J<CR>
nnoremap <leader>K :wincmd K<CR>
nnoremap <leader>L :wincmd L<CR>
nnoremap <leader>H :wincmd H<CR>

" ### Open files on current window
" I got happy by thinking on this
" Thank to God!
nnoremap <silent><Leader>_ :split <CR>
nnoremap <silent><Leader>~ :split <CR>
nnoremap <silent><Leader>\| :vsplit <CR> " I think this one was primeagen

nnoremap <silent><Leader>sv :vsplit <CR>
nnoremap <silent><Leader>sh :split <CR>

" ### Tabs

" #### Focus

" ##### Focus Next and previous tab
nnoremap <leader>, gT<CR>
nnoremap <leader>. gt<CR>

" ##### Focus nth tab
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

" ##### Tab indexer

nmap <silent> <Leader>t' :exe "tabn " . g:LastTab<cr>
nmap <silent> <Leader>' :exe "tabn " . g:LastTab<cr>
nmap <silent> <Leader>- :exe "tabn " . g:LastTab<cr>

" Focus previously active tab


" #### Move tabs
"nnoremap <leader>tmh :tabm -1<CR> "Do it

nnoremap <leader>mh :execute 'tabm -' . v:count1<CR>
nnoremap <leader>ml :execute 'tabm +' . v:count1<CR>
nnoremap <leader>m, :execute 'tabm -' . v:count1<CR>
nnoremap <leader>m. :execute 'tabm +' . v:count1<CR>

" ###### Move to nth sloth
nnoremap <leader>m1 :tabm0<CR>
nnoremap <leader>m2 :tabm2<CR>
nnoremap <leader>m3 :tabm3<CR>
nnoremap <leader>m4 :tabm4<CR>
nnoremap <leader>m5 :tabm5<CR>
nnoremap <leader>m6 :tabm6<CR>
nnoremap <leader>m7 :tabm7<CR>
nnoremap <leader>m8 :tabm8<CR>
nnoremap <leader>m9 :tabm9<CR>

" ## Surounding

" ### Quotes
" Normal mode
nnoremap <Leader>q" "5ciw""<Esc>P
nnoremap <Leader>q' "5ciw''<Esc>P
nnoremap <Leader>qq "5ciw``<Esc>P
nnoremap <Leader>qb "5ciw``<Esc>P

" Visual mode
xnoremap <Leader>q" "5xi""<Esc>P
xnoremap <Leader>q' "5xi''<Esc>P

" ### Brackets

" #### By first letter
" Normal mode
nnoremap <Leader>qp "5ciw()<Esc>P
nnoremap <Leader>qc "5ciw{}<Esc>P
nnoremap <Leader>qx "5ciw[]<Esc>P
nnoremap <Leader>qt "5ciw<><Esc>P

" Visual mode
xnoremap <Leader>qp "5xi()<Esc>P
xnoremap <Leader>qc "5xi[]<Esc>P
xnoremap <Leader>qx "5xi{}<Esc>P
xnoremap <Leader>qt "5ciw<><Esc>P

" #### By hierarchy
" Normal mode
nnoremap <Leader>q1 "5ciw()<Esc>P
nnoremap <Leader>q2 "5ciw[]<Esc>P
nnoremap <Leader>q3 "5ciw{}<Esc>P
nnoremap <Leader>q4 "5ciw<><Esc>P
nnoremap <Leader>q5 "5ciw{{}}<Esc>hP
nnoremap <Leader>q6 "5ciw[()]<Esc>hP

" Visual mode
xnoremap <Leader>q1 "5xi()<Esc>P
xnoremap <Leader>q2 "5xi[]<Esc>P
xnoremap <Leader>q3 "5xi{}<Esc>P
xnoremap <Leader>q4 "5xi<><Esc>P
xnoremap <Leader>q5 "5xi{{}}<Esc>hP
xnoremap <Leader>q6 "5xi[()]<Esc>hP

" #### By Language
" Normal mode
nnoremap <Leader>qa "5ciw{{}}<Esc>hP
nnoremap <Leader>qm "5ciw[()]<Esc>hP

" Visual mode
xnoremap <Leader>qa "5xi{{}}<Esc>hP
xnoremap <Leader>qm "5xi[()]<Esc>hP

" ### Copy and paste

" #### Primeagen ideia
vnoremap <leader>p "_dp
vnoremap <leader>ç "_d"+p

vnoremap <leader>P "_dP
vnoremap <leader>Ç "_d"+P

" #### My ideias

nnoremap <silent> <Leader>p "*p
nnoremap <silent> <Leader>P "*P

nnoremap <silent> <Leader>ç "+p
nnoremap <silent> <Leader>Ç "+P

nnoremap <silent> <Leader>y "+y
vnoremap <silent> <Leader>y "+y
nnoremap <silent><leader>G :let @+=join(getline(1, '$'), "\n")<CR>

" #### Copy to jump
nnoremap <leader>i' "_yi'
nnoremap <leader>i" "_yi"
nnoremap <leader>i` "_yi`

" ##### By symbol
nnoremap <leader>i( "_yi(
nnoremap <leader>i{ "_yi{
nnoremap <leader>i[ "_yi[

" ##### By letter
nnoremap <leader>ib "_yi(
nnoremap <leader>iB "_yi{
nnoremap <leader>ia "_yi[

" ##### By Priority
nnoremap <leader>i1 "_yi(
nnoremap <leader>i3 "_yi{
nnoremap <leader>i2 "_yi[

" ## Edit init file
command! EditVimrc execute 'edit' stdpath('config') . '/init.vim'
command! SourceVimrc execute 'source' stdpath('config') . '/init.vim'

nnoremap <silent><leader>¨ :EditVimrc<CR>
nnoremap <silent><leader>% :SourceVimrc<CR>

" ## Leaved out
" Commands that I did not put here
" But I am writing as comments.
" Maybe it will be usefull in the future

" Change something in the buffer
"nnoremap <Leader>qd "5daW"=substitute(@@,"'\\\|\"","","g")<CR>P
"xnoremap <Leader>qd "5xi"=substitute(@@,"'\\\|\"","","g")<CR>P


