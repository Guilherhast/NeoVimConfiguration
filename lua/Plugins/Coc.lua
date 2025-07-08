local utils = require("GuilherHast.utils")

--Unmap the Q key
utils.remap('nxv', 'Q', '<Nop>')

--[[
TODO:
Add php command to:
mkdir ~/.config/nvim/libs/php
cd ~/.config/nvim/libs/php
composer require --dev php-stubs/wordpress-stubs
--]]

--[[
Helfull links:
https://github.com/samhvw8/mvim/blob/master/lua/core/coc.lua
--]]
--# Coc configurations

--## Functions

--[[
local function register_mappings(mappings, default_options)
	for mode, mode_mappings in pairs(mappings) do
		for _, mapping in pairs(mode_mappings) do
			local options = #mapping == 3 and table.remove(mapping) or default_options
			local prefix, cmd = unpack(mapping)
			pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
		end
	end
end
--]]
function _G.MyTrim()
	local saved_pos = vim.fn['getpos'](".")
	local types_to_skip = { 'md', 'python', 'gd' }
	if not utils.inTable(vim.bo.filetype, types_to_skip) then
		vim.cmd([[:silent! %s/ *\([\t]\+\) */\1/g"]])
		vim.cmd([[:silent! %s/^ *// | %s/[ \t]*$//]])
	end
	vim.cmd(':silent! nohlsearch')
	vim.cmd(":silent! call CocAction('format')")
	vim.cmd([[:silent! %s/ \*/*/]])
	vim.cmd([[:silent! %s/){/){/]]) -- Make sure uglyness wont show up
	vim.fn.setpos('.', saved_pos)
end

function _G.check_back_space()
	local col = vim.fn.col('.') - 1
	--TODO
	--Submit a commit with your fixes
	--from number to number|string
	--from any[] to any[] | string
	if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
		return true
	else
		return false
	end
end

function _G.show_docs()
	local cw = vim.fn.expand('<cword>')
	if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
		vim.cmd('h ' .. cw)
	elseif vim.api.nvim_eval('coc#rpc#ready()') then
		vim.fn.CocActionAsync('doHover')
	else
		vim.cmd('!' .. vim.o.keywordprg .. ' ' .. cw)
	end
end

function _G.coc_cursors_skip()
	return [[<Plug>(coc-cursors-word)*<Plug>(coc-cursors-word):nohlsearch<CR>]]
end

function _G.coc_cursors_select_current()
	if vim.b['coc_cursors_activated'] == 1 then
		return [[*<Plug>(coc-cursors-word):nohlsearch<CR>]]
	else
		return [[<Plug>(coc-cursors-word)]]
	end
end

function _G.coc_GotoDefinition()
	if vim.fn.CocAction('jumpDefinition') then
		return true
	end

	local ret = vim.fn.execute([[normal <C-]>]], true)
	if
		string.find(ret, 'Error') ~= nil or
		string.find(ret, "错误") ~= nil then
		vim.fn.searchdecl(vim.fn.expand('<cword>'))
	end
end

--## Vim interface
vim.o.cmdheight = 2
vim.o.completeopt = 'menuone'

--## Autocommands
vim.api.nvim_create_autocmd({ 'ColorScheme' }, {
	callback =
		function()
			vim.api.nvim_set_hl(
				0,
				'CocHighlightText',
				{ ctermfg = 'yellow', ctermbg = 'black' }

			)
		end
})

--TODO:
--Use a function
vim.api.nvim_create_autocmd("CursorHold", { command = 'silent call CocActionAsync("highlight")' })

--## Variables
--### Coc Extensions
vim.g.coc_global_extensions = {
	--UI
	'coc-explorer',
	--Fast Editing
	'coc-snippets',
	'coc-pairs',
	'coc-emmet',
	--Command line
	'coc-sh',
	'coc-powershell',
	--Config files
	'coc-vimlsp',
	--Front end
	'coc-sql',
	'coc-json',
	'coc-html',
	'coc-css',
	'coc-tailwindcss',
	'coc-angular',
	--Back end
	'coc-tsserver',
	'coc-jest',
	'coc-inline-jest',
	'coc-psalm', -- Put back
	'coc-phpls',
	--'@yaegassy/coc-intelephense',
	--Scripting
	'coc-pyright',
	--'coc-python',
	'coc-lua',
	'coc-sumneko-lua',
	--DevOps
	'coc-docker',
	--Games
	'coc-omnisharp',
	'coc-godot',
	--Compiled
	'coc-clangd',
	--Prettier
	'coc-eslint',
	'coc-prettier'
}

--### Keys
vim.g.coc_snippet_next = '<leader>l'
vim.g.coc_snippet_previous = '<leader>h'

vim.g.user_emmet_mode = 'inv'

--## Remaps
--### Normal
local opts = { silent = true, nowait = true }

--Define functions

--#### Call functions
utils.remap("n", "K", '<CMD>lua _G.show_docs()<CR>', opts)

utils.remap("n", 'Qf', '<Plug>(coc-fix-current)', opts)

utils.remap("n", '<leader>=', '<CMD>silent lua MyTrim()<CR>', opts)

--##### Code actions

utils.remap("xn", "Qa", "<Plug>(coc-codeaction-selected)", opts)
utils.remap("n", "Qac", "<Plug>(coc-codeaction-cursor)", opts)
utils.remap("n", 'Qac', '<Plug>(coc-codeaction)', opts)
utils.remap("n", 'Qas', '<Plug>(coc-codeaction)', opts)


--utils.remap("n", 'Qr', '<Plug>(coc-rename)', { noremap = false })
utils.remap("n", 'Qr', '<CMD>CocCommand document.renameCurrentWord<CR>', { noremap = false })

--##### Refactor
-- Remap keys for apply refactor code actions.
utils.remap("n", "QRe", "<Plug>(coc-codeaction-refactor)", { silent = true })
utils.remap("x", "QR", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
utils.remap("n", "QR", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
utils.remap("xo", "if", "<Plug>(coc-funcobj-i)", opts)
utils.remap("xo", "af", "<Plug>(coc-funcobj-a)", opts)
utils.remap("xo", "ic", "<Plug>(coc-classobj-i)", opts)
utils.remap("xo", "ac", "<Plug>(coc-classobj-a)", opts)


--#### Jumps
-- What each one mean?
utils.remap("n", 'gd', '<CMD>lua _G.coc_GotoDefinition()<CR>', { noremap = false })
utils.remap("n", '<space>gt', '<CMD>call CocAction("jumpDefinition", "tabe")', { noremap = false })
--utils.remap("n", 'gd', '<Plug>(coc-definition)', { noremap = false })
utils.remap("n", 'gy', '<Plug>(coc-type-definition)', { noremap = false })
utils.remap("n", 'gi', '<Plug>(coc-implementation)', { noremap = false })
utils.remap("n", 'gr', '<Plug>(coc-references)', { noremap = false })

--#### Diagnostics
utils.remap("n", '[g', '<Plug>(coc-diagnostic-prev)', { noremap = false })
utils.remap("n", ']g', '<Plug>(coc-diagnostic-next)', { noremap = false })
utils.remap("n", 'Qj', '<Plug>(coc-diagnostic-next)', { noremap = false })
utils.remap("n", 'Qk', '<Plug>(coc-diagnostic-prev)', { noremap = false })


--[[
utils.remap("n", 'Qgd', '<Plug>(coc-definition)', { noremap = false })
utils.remap("n", 'Qgy', '<Plug>(coc-type-definition)', { noremap = false })
utils.remap("n", 'Qgi', '<Plug>(coc-implementation)', { noremap = false })
utils.remap("n", 'Qgr', '<Plug>(coc-references)', { noremap = false })
--]]
--### Insert
utils.remap("i", "<TAB>", 'pumvisible() ? coc#pum#next(1): v:lua.check_back_space() ? "<TAB>": coc#refresh()',
	{ expr = true })
utils.remap("i", "<S-TAB>", 'pumvisible() ? coc#pum#prev(1): coc#refresh()',
	{ expr = true })

utils.remap("i", "<CR>", [[pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
	{ expr = true })
utils.remap("i", "<C-F>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<Right>"',
	{ expr = true, silent = true, nowait = true })
utils.remap("i", "<C-B>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<Left>"',
	{ expr = true, silent = true, nowait = true })

--### Control float window

opts = { silent = true, nowait = true, expr = true }
utils.remap("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
utils.remap("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
utils.remap("i", "<C-f>",
	'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
utils.remap("i", "<C-b>",
	'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
utils.remap("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
utils.remap("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)

--###
opts = { silent = true, nowait = true }

-- Show list
utils.remap("n", "Qll", ":<C-u>CocList<cr>", opts)
-- Show last ( resume )
utils.remap("n", "<space>p", ":<C-u>CocListResume<cr>", opts)
utils.remap("n", "Qlr", ":<C-u>CocListResume<cr>", opts)
-- Show all diagnostics
utils.remap("n", "Qla", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions
utils.remap("n", "Qle", ":<C-u>CocList extensions<cr>", opts)
-- Show commands
utils.remap("n", "Qlc", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document
utils.remap("n", "Qlo", ":<C-u>CocList outline<cr>", opts)
utils.remap("n", "Qo", ":<C-u>CocList outline<cr>", opts)
-- Search workspace snipets
utils.remap("n", "Qls", ":<C-u>CocList snippets", opts)
-- Search workspace symbols
utils.remap("n", "Qly", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item
utils.remap("n", "<space>j", ":<C-u>CocNext<cr>", opts)
-- Do default action for previous item
utils.remap("n", "<space>k", ":<C-u>CocPrev<cr>", opts)


--## Feature remaps

--### Multiple cursors

--utils.remap("n", '<leader>dd', '<Plug>(coc-cursors-positon)', { noremap = false })
--utils.remap("n", '<leader>dd', '<Plug>(coc-cursors-word)', { noremap = false })
utils.remap("n", '<leader>dd', 'v:lua.coc_cursors_select_current()', { expr = true, noremap = true })
utils.remap("n", '<leader>ds', 'v:lua.coc_cursors_skip()', { expr = true, noremap = true })
utils.remap("x", '<leader>dd', '<Plug>(coc-cursors-range)', { noremap = false })


--### Coc-explorer
utils.remap('n', 'Qe', '<Cmd>CocCommand explorer<CR>')
utils.remap('n', 'QE', '<Cmd>CocCommand explorer<CR>')
utils.remap('n', '<space>e', '<Cmd>CocCommand explorer<CR>')
utils.remap('n', '<space>E', '<Cmd>CocCommand explorer<CR>')

--## Filetypes
vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	callback = function()
		-- Remove "}" from the indentkeys list.
		local excludedKeys = "{}"
		for i = 0, #excludedKeys do
			vim.opt_local.indentkeys:remove(string.sub(excludedKeys, i, i))
		end
	end,
})
