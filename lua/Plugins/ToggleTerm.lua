--Docs:
--https://github.com/akinsho/toggleterm.nvim
--[[--
<space>tsl -  send line
<space>tsv -  send visual line
<space>tss -  send visual selection

" set
autocmd TermEnter term://*toggleterm#*
\ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

--]]

--# Toggleterm

--## Setup

require("toggleterm").setup {
	-- size can be a number or function which is passed the current terminal
	--[[
	--]]
	size = function (term)
		if term.direction == "horizontal" then
			return vim.fn.winheight(0)/2
		end
		if term.direction == "vertical" then
			return vim.fn.winwidth(0)/2
		end
	end,
	open_mapping = [[<space>tt]],
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_filetypes = {},
	autochdir = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened
	start_in_insert = true,
	-- Take a look on this after
	insert_mappings = false, -- whether or not the open mapping applies in insert mode
	terminal_mappings = false, -- whether or not the open mapping applies in the opened terminals
	persist_size = false,
	persist_mode = true,   -- if set to true (default) the previous terminal mode will be remembered
	close_on_exit = true,  -- close the terminal window when the process exits
	-- Change the default shell. Can be a string or a function returning a string
	shell = vim.o.shell,
	auto_scroll = true, -- automatically scroll to the bottom on terminal output
	-- This field is only relevant if direction is set to 'float'
	float_opts = {
		-- The border key is *almost* the same as 'nvim_open_win'
		-- see :h nvim_open_win for details on borders however
		-- the 'curved' border is a custom border type
		-- not natively supported but implemented in this plugin.
		-- like `size`, width and height can be a number or function which is passed the current terminal
		winblend = 0,
	},
	direction="float",
	winbar = {
		enabled = false,
		name_formatter = function(term) --  term: Terminal
			return term.name
		end
	},
}

--## Terms
local Terminal = require('toggleterm.terminal').Terminal

function termVrt()
	Terminal:new({direction="vertical", count=9}):toggle()
end

function termHrt()
	Terminal:new({direction="horizontal", count=4}):toggle()
end

function termTab()
	Terminal:new({direction="tab", count=7}):toggle()
end

function termFlo()
	Terminal:new({direction="float"}):toggle()
end

--## Keymaps
--## TODO: use cmdSplit

utils.remap('n', '<space>Tl', '<CMD>lua termVrt()<CR>', {noremap = false})
utils.remap('n', '<space>Th', '<CMD>lua termVrt()<CR>', {noremap = false})
utils.remap('n', '<space>Tj', '<CMD>lua termHrt()<CR>', {noremap = false})
utils.remap('n', '<space>Tk', '<CMD>lua termHrt()<CR>', {noremap = false})
utils.remap('n', '<space>Tn', '<CMD>lua termTab()<CR>', {noremap = false})
utils.remap('n', '<space>TT', '<CMD>lua termTab()<CR>', {noremap = false})
utils.remap('n', '<space>Tf', '<CMD>lua termFlo()<CR>', {noremap = false})
utils.remap('n', '<space>Tt', '<CMD>lua termFlo()<CR>', {noremap = false})
utils.remap('n', '<space>TM', '<CMD>lua require("toggleterm.terminal").Terminal:new({cmd="cmatrix -a"}):toggle()<CR>', {noremap = false})
--utils.remap('n', '<space>Tj', '<CMD>lua _G.utils.cmdSplit("horizontal","j","terminal")<CR>', {noremap = false})
