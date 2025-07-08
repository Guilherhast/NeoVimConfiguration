--# My remaps
--## Imports

local utils = require("GuilherHast.utils")

--## Workflow remaps

--### Jumping

--#### Files

utils.remap('n','<leader>n', '<CMD>n<CR>', {noremap=true})
utils.remap('n','<leader>N', '<CMD>N<CR>', {noremap=true})

utils.remap('n','<C-space>', '<C-6>', {noremap=true})

--#### CammelCaseSearch

local opts={silent=true}
local searchtext=[['\u\|[./\[ ()_\t]\a\|^\a']]

utils.remap('n','<c-l>', string.format(":<c-u>call search( %s , %s )<cr>", searchtext, [['e']]),opts)
utils.remap('n','<c-h>', string.format(":<c-u>call search( %s , %s )<cr>", searchtext, [['be']]), opts)

--utils.remap('iv', '<C-l>', '<C-o><C-l>', {noremap=false}) --TODO: Add shift
--utils.remap('iv', '<C-h>', '<C-o><C-h>', {noremap=false})

--### Cutting/deleting
utils.remap('i', '<C-D>', '<C-o>ce') --TODO: Not working


--### Pasting

-- My ideias
utils.remap('n','<leader>p', '"*p', {noremap=true})
utils.remap('n','<leader>P', '"*P', {noremap=true})

utils.remap('n','<leader>ç', '"+p', {noremap=true})
utils.remap('n','<leader>Ç', '"+P', {noremap=true})


utils.remap('nv', '<leader>y', '"+y', {silent=true, noremap=true})
utils.remap('n', '<leader>G', 'gg"+yG\'\'', {silent=true, noremap=true})

--#### Visual

-- Primeagen ideias
utils.remap('v','<leader>p', '"_dp', {noremap=true})
utils.remap('v','<leader>ç', '"_d"+p', {noremap=true})

--### Move
utils.remap('n', '<A-k>', '<CMD>m-2<CR>==')
utils.remap('n', '<A-j>', '<CMD>m+1<CR>==')

utils.remap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {noremap=false})
utils.remap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {noremap=false})

utils.remap('v', '<A-k>', ":m '<-2<CR>gv=gv")
utils.remap('v', '<A-j>', ":m '>+1<CR>gv=gv")

--### Suroundings

--#### Normal mode
utils.remap('n', [[<Leader>q"]], [["5ciw""<Esc>P]], opts)
utils.remap('n', [[<Leader>q']], [["5ciw''<Esc>P]], opts)
utils.remap('n', [[<Leader>q`]], [["5ciw``<Esc>P]], opts)
utils.remap('n', [[<Leader>qq]], [["5ciw``<Esc>P]], opts)
utils.remap('n', [[<Leader>qb]], [["5ciw``<Esc>P]], opts)

utils.remap('n', [[<Leader>qp]], [["5ciw()<Esc>P]], opts)
utils.remap('n', [[<Leader>qc]], [["5ciw{}<Esc>P]], opts)
utils.remap('n', [[<Leader>qx]], [["5ciw[]<Esc>P]], opts)
utils.remap('n', [[<Leader>qt]], [["5ciw<><Esc>P]], opts)


utils.remap('n', [[<Leader>qa]], [["5ciw{{}}<Esc>hP]], opts)
utils.remap('n', [[<Leader>qm]], [["5ciw[()]<Esc>hP]], opts)

utils.remap('n', [[<Leader>q1]], [["5ciw()<Esc>P]], opts)
utils.remap('n', [[<Leader>q2]], [["5ciw[]<Esc>P]], opts)
utils.remap('n', [[<Leader>q3]], [["5ciw{}<Esc>P]], opts)
utils.remap('n', [[<Leader>q4]], [["5ciw<><Esc>P]], opts)
utils.remap('n', [[<Leader>q5]], [["5ciw{{}}<Esc>hP]], opts)
utils.remap('n', [[<Leader>q6]], [["5ciw[()]<Esc>hP]], opts)

utils.remap('n', [[<Leader>qd]], [["5daW"=substitute(@@,"'\\\|\"","","g")<CR>P]], opts)

--#### Visual mode

utils.remap('v', [[<Leader>q"]], [["5xi""<Esc>P]], opts)
utils.remap('v', [[<Leader>q']], [["5xi''<Esc>P]], opts)
utils.remap('v', [[<Leader>q`]], [["5xi``<Esc>P]], opts)
utils.remap('v', [[<Leader>qq]], [["5xi``<Esc>P]], opts)
utils.remap('v', [[<Leader>qb]], [["5xi``<Esc>P]], opts)

utils.remap('v', [[<Leader>qp]], [["5xi()<Esc>P]], opts)
utils.remap('v', [[<Leader>qc]], [["5xi{}<Esc>P]], opts)
utils.remap('v', [[<Leader>qx]], [["5xi[]<Esc>P]], opts)
utils.remap('v', [[<Leader>qt]], [["5xi<><Esc>P]], opts)


utils.remap('v', [[<Leader>qa]], [["5xi{{}}<Esc>hP]], opts)
utils.remap('v', [[<Leader>qm]], [["5xi[()]<Esc>hP]], opts)

utils.remap('v', [[<Leader>q1]], [["5xi()<Esc>P]], opts)
utils.remap('v', [[<Leader>q2]], [["5xi[]<Esc>P]], opts)
utils.remap('v', [[<Leader>q3]], [["5xi{}<Esc>P]], opts)
utils.remap('v', [[<Leader>q4]], [["5xi<><Esc>P]], opts)
utils.remap('v', [[<Leader>q5]], [["5xi{{}}<Esc>hP]], opts)
utils.remap('v', [[<Leader>q6]], [["5xi[()]<Esc>hP]], opts)

--utils.remap('v', [[<Leader>qd]], [["5daW"=substitute(@@,"'\\\|\"","","g")<CR>P]], opts)

--#### Edit blocks

local tKeys = { '\'', '"', '`', '(', 'b', '{', 'B', '[', 't'}
for _,key in ipairs(tKeys) do
	utils.remap('n','<leader>i' .. key, '"_yi' .. key, {noremap=true})
	utils.remap('n','<leader>a' .. key, '"_ya' .. key, {noremap=true})
end

--## Opening

utils.remap('n', '<leader>ff', '<CMD>e <cfile><CR>', {silent=true})
utils.remap('n', '<leader>fs', '<CMD>split <cfile><CR>', {silent=true})
utils.remap('n', '<leader>ft', '<CMD>tabe <cfile><CR>', {silent=true})
utils.remap('n', '<leader>fg', '<CMD>vertical split <cfile><CR>', {silent=true})
utils.remap('n', '<leader>fv', '<CMD>vertical split <cfile><CR>', {silent=true})


utils.remap('n', '<leader>fk', '<CMD>lua _G.utils.cmdSplit("horizontal", "k", "e " .. vim.fn.expand("<cfile>"))<CR>', {silent=true})
utils.remap('n', '<leader>fj', '<CMD>lua _G.utils.cmdSplit("horizontal", "j", "e " .. vim.fn.expand("<cfile>"))<CR>', {silent=true})
utils.remap('n', '<leader>fl', '<CMD>lua _G.utils.cmdSplit("vertical", "l", "e " .. vim.fn.expand("<cfile>"))<CR>', {silent=true})
utils.remap('n', '<leader>fh', '<CMD>lua _G.utils.cmdSplit("vertical", "h", "e " .. vim.fn.expand("<cfile>"))<CR>', {silent=true})


--### Buffers

utils.remap('n', '<leader>|', ':vsplit<CR>', {silent=true})
utils.remap('n', '<leader>sv', ':vsplit<CR>', {silent=true})
utils.remap('n', '<leader>sh', ':split<CR>', {silent=true})

--### Terminal

utils.remap('n', '<space>tl', '<CMD>lua _G.utils.cmdSplit("vertical","l","terminal")<CR>', {noremap = false})
utils.remap('n', '<space>th', '<CMD>lua _G.utils.cmdSplit("vertical","h","terminal")<CR>', {noremap = false})
utils.remap('n', '<space>tk', '<CMD>lua _G.utils.cmdSplit("horizontal","k","termina")<CR>', {noremap = false})
utils.remap('n', '<space>tj', '<CMD>lua _G.utils.cmdSplit("horizontal","j","terminal")<CR>', {noremap = false})
utils.remap('n', '<space>tn', '<CMD>tabe | terminal<CR>', {noremap = false})

--## Movement -- Put before copy and paste

--### Navigation

--#### Windows

utils.remap('n', '<leader>h', ':wincmd h<CR>', {noremap = false})
utils.remap('n', '<leader>j', ':wincmd j<CR>', {noremap = true})
utils.remap('n', '<leader>k', ':wincmd k<CR>', {noremap = true})
utils.remap('n', '<leader>l', ':wincmd l<CR>', {noremap = true})
utils.remap('n', '<leader>r', ':wincmd r<CR>', {noremap = true})

utils.remap('n', '<leader>H', ':wincmd H<CR>', {noremap = true})
utils.remap('n', '<leader>J', ':wincmd J<CR>', {noremap = true})
utils.remap('n', '<leader>K', ':wincmd K<CR>', {noremap = true})
utils.remap('n', '<leader>L', ':wincmd L<CR>', {noremap = true})

--#### Tabs

utils.remap('n', '<leader>td', ':tab split<CR>', {noremap = true, silent=true})
utils.remap('n', '<leader>tn', ':tabe<CR>', {noremap = true, silent=true})
utils.remap('n', '<leader>to', ':wincmd T<CR>', {noremap = true, silent=true})

utils.remap('n', '<leader>,', 'gT')
utils.remap('n', '<leader>.', 'gt')

utils.remap('n','<leader>mh', ':tabm -1<CR>', {noremap=true})
utils.remap('n','<leader>ml', ':tabm +1<CR>', {noremap=true})
utils.remap('n','<leader>m,', ':tabm -1<CR>', {noremap=true})
utils.remap('n','<leader>m.', ':tabm +1<CR>', {noremap=true})

for i=0, 9 do
	utils.remap('n','<leader>' .. i, i .. 'gt<CR>', {noremap=true})
	utils.remap('n','<leader>m' .. i, ':tabm' .. i .. '<CR>', {noremap=true})
end

--local lt_cmd=[[<CMD>lua vim.cmd(string.format('tabn %s <CR>', _G.lastTab ))<CR>]]
local lt_cmd=[[<CMD>lua vim.cmd(string.format('tabn %s', _G.lastTab))<CR>]]

utils.remap('n',[[<leader>']],  lt_cmd, {noremap=true})
utils.remap('n',"<leader>-",  lt_cmd, {noremap=true})
utils.remap('n',"<leader>t'", lt_cmd, {noremap=true})

--### Scrolling

utils.remap('n','zl','z4l')
utils.remap('n','zh','z4h')

utils.remap('n','<leader>z','zt')
utils.remap('n','z\\','zt')
utils.remap('n','zx','zb')

--### Fast actions
--utils.remap('ivc', 'çç', '<ESC>')

utils.remap('n', '<leader>\\', '<CMD>nohlsearch | echo<CR>')
utils.remap('n', '<leader><CR>', '<CMD>:pwd<CR>')


--### Fast editing
utils.remap('i', '<C-S-CR>', '<C-o>O')
utils.remap('i', '<C-CR>', '<C-o>o')
utils.remap('n', '<C-S-CR>', 'O')
utils.remap('n', '<C-CR>', 'o')


--### Arrows

utils.remap('i', '<c-e>', '<C-o>$')
utils.remap('i', '<c-a>', '<C-o>^')

utils.remap('i','<C-S-h>', '<Left>')
utils.remap('i','<C-S-j>', '<Down>')
--utils.remap('i','<C-k>', '<Up>') --TODO: Change after add l
--utils.remap('i','<C-l>', '<Right>')


--### Test functions

utils.remap('n', '<C-S-K>', ':lua print("CSK")')
utils.remap('n', '<C-S-J>', ':lua print("CSJ")')

--## Avoid unwanted hits

utils.remap('n', '<F1>', ':echo "Asign it!"<CR>')
utils.remap('n', '<F2>', ':echo "Asign it!"<CR>')
--utils.remap('i', '<F1>', '<C-o>:echo "Asign it!"<CR>')

--## Compatibility

utils.remap('i', '<c-s>', '<esc>:<CR>a')

utils.remap('c', '<c-a>', '<c-b>')


--## Languages
--utils.remap('i', '<leader>.', '->')


