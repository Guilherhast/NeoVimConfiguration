" # Fugitive

" ## Mappings

nnoremap <leader><backspace>  :GRename<cr>

nnoremap <leader>gr  :GRename<cr>
nnoremap <leader>gw  :Gwrite<cr>

nnoremap <leader>gs :tab G<CR>
nnoremap <leader>gv :Gvdiffsplit!<CR>
nnoremap <leader>gh :Gdiffsplit!<CR>
nnoremap <leader>gl :diffget //3<CR>
nnoremap <leader>gh :diffget //2<CR>

" ### Unused mappings

"nnoremap <leader>+  :GWrite<cr>
"nnoremap <leader>-  :Gstatus<cr>
"nnoremap <leader>_  :Gstatus<cr>

" ## Commands
command! GW :Gw
