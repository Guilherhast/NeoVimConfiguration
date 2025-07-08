--# Configuration
--## Appearance

vim.cmd.colorscheme('restNight')

--##  Terminal

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]], opts)
  --vim.keymap.set('t', '<esc><esc><esc><leader>', [[<C-\><C-n>:q<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>h', [[<C-\><C-n>:wincmd h<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>j', [[<C-\><C-n>:wincmd j<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>k', [[<C-\><C-n>:wincmd k<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>l', [[<C-\><C-n>:wincmd l<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>H', [[<C-\><C-n>:wincmd H<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>J', [[<C-\><C-n>:wincmd J<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>K', [[<C-\><C-n>:wincmd K<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>L', [[<C-\><C-n>:wincmd L<CR>]], opts)
  vim.keymap.set('t', '<esc><esc>c', [[<C-\><C-n>:q<CR>]], opts)
  --vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  --vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  --vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  --vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  --vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  --vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.api.nvim_create_autocmd({'TermOpen'}, { pattern='term://*', callback=_G.set_terminal_keymaps})
vim.api.nvim_create_autocmd({'TermOpen'}, { pattern='term://*', command="startinsert"})
