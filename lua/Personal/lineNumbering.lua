--#Configuration for line numbering

--##Initial variable
vim.o.relativenumber=true
vim.o.number=true

--#Function for auto group
function ActivateNumberToggle()
	vim.g.relNumberActivated = not vim.g.relNumberActivated

	local setRel = {
		"BufEnter",
		"FocusGained",
		"InsertLeave",
		"CmdWinEnter",
	}
	local setNoRel = {
		"BufLeave",
		"FocusLost",
		"InsertEnter",
		"CmdWinLeave",
	}

	local group = vim.api.nvim_create_augroup('relNumberToggle', {})

	if vim.g.relNumberActivated then
		vim.o.relativenumber = true
		vim.api.nvim_create_autocmd(setRel,{
			pattern='*',
			callback= function ()
				vim.o.relativenumber=true
			end,
			group=group
		})
		vim.api.nvim_create_autocmd(setNoRel,{
			pattern='*',
			callback= function ()
				vim.o.relativenumber=false
			end,
			group=group
		})
	else
		vim.o.relativenumber = false
	end
end

vim.api.nvim_create_user_command('SwithRN', ActivateNumberToggle , {})

--Let it as false then active it
vim.g.relNumberActivated = false
ActivateNumberToggle()
