--# Commands

--## User commands

vim.api.nvim_create_user_command('Reload', function()
	for name, _ in pairs(package.loaded) do
		if name:match('^user') and not name:match('nvim-tree') then
			package.loaded[name] = nil
		end
	end

	--vim.api.nvim_command('luafile' .. os.getenv('MYVIMRC'))
	local file = os.getenv('MYVIMRC')
	dofile(file)
	vim.cmd('luafile' .. file)
	vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end, {})


vim.api.nvim_create_user_command('TitleToH1', [[<CMD>s/<\(\/\?\)title>/<\1h1>/g<CR>]], {})

vim.api.nvim_create_user_command('HighlightOpaque', function()
	vim.cmd("highlight Normal guibg=Grey1 ctermbg=16<CR>")
end, {})
vim.api.nvim_create_user_command('HighlightTransparent', function()
	vim.cmd("highlight Normal guibg=None ctermbg=None")
end, {})

--## Acidental Captal case hits

vim.api.nvim_create_user_command('W', function(cmd)
	local c = 'w ';
	vim.cmd(c .. cmd.args)
end, { nargs = '*', bang = true })
vim.api.nvim_create_user_command('Wq', function(cmd)
	local c = 'wq ';
	vim.cmd(c .. cmd.args)
end, { nargs = '*', bang = true })
vim.api.nvim_create_user_command('WQ', function(cmd)
	local c = 'wq ';
	vim.cmd(c .. cmd.args)
end, { nargs = '*', bang = true })
vim.api.nvim_create_user_command('Q', function(cmd)
	local c = 'q ';
	vim.cmd(c .. cmd.args)
end, { nargs = '*', bang = true })
vim.api.nvim_create_user_command('Qa', function(cmd)
	local c = 'qa ';
	vim.cmd(c .. cmd.args)
end, { nargs = '*', bang = true })
vim.api.nvim_create_user_command('Wa', function(cmd)
	local c = 'wa ';
	vim.cmd(c .. cmd.args)
end, { nargs = '*', bang = true })
vim.api.nvim_create_user_command('Wa', function(cmd)
	local c = 'wa ';
	vim.cmd(c .. cmd.args)
end, { nargs = '*', bang = true })

--## Auto commands

vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { '*' },
	command = 'setlocal formatoptions-=cro',
})

--autocmd! TabLeave* let g:Lasttab_backup = g:Lasttab | let g:Lasttab = tabpagenr()
--autocmd! TabClosed* let g:Lasttab = g:Lasttab_backup

--### Tabs
_G.lastTab_Backup = _G.lastTab_Backup or _G.lastTab or vim.fn.tabpagenr()
_G.lastTab = _G.lastTab or vim.fn.tabpagenr()

vim.api.nvim_create_autocmd(
	{ 'BufEnter' },
	{
		pattern = "mjs",
		command = "set FileType=javascript"
	}
)

vim.api.nvim_create_autocmd(
	{ 'TabLeave' },
	{
		callback = function()
			_G.lastTab_Backup = _G.lastTab
			_G.lastTab        = vim.fn.tabpagenr()
		end
	}
)

vim.api.nvim_create_autocmd(
	{ 'TabClosed' },
	{
		callback = function()
			_G.lastTab = _G.lastTab_Backup
		end
	}
)
--### Actions

vim.api.nvim_create_autocmd(
	{ 'CursorHold' },
	{ command = 'checktime' }
)

--### Remappings
--#### Languages

vim.api.nvim_create_autocmd(
	{ 'BufNewFile', 'BufRead' },
	{
		pattern = '*.c,*.h,*.cpp,*.php',
		callback = function()
			utils.remap('i', '<leader>.', '->', { noremap = true })
			utils.remap('i', '<leader>=', '=>', { noremap = true })
		end
	}
)

vim.api.nvim_create_autocmd(
	{'FileType'},
	{
		pattern = 'python',
		callback = function()
			vim.defer_fn(function()
				vim.opt_local.iskeyword:remove("_")
			end, 0)
		end
	}
)

vim.api.nvim_create_autocmd(
	{'FileType'},
	{
		pattern = 'php',
		callback = function()
			vim.defer_fn(function()
				vim.opt_local.iskeyword:remove("$")
			end, 0)
		end
	}
)

vim.api.nvim_create_autocmd(
	{ 'BufNewFile' },
	{
		pattern = '*.gd',
		command = 'noremap <buffer> <F4> :GodotRunLast<CR>'
	}
)


--### Chars

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead", },
	{
		pattern = "*.py,*.gd",
		callback = function()
			vim.o.list = true
			vim.o.listchars = 'tab:┊  ,trail:·'
		end
	}
)

--## Abbreviation
-- TODO
-- cosnt const
