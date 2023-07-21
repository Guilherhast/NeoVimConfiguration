local utils = {}

function utils.inTable(value,list)
	print(table.concat(list, ", "))
	for _, table_value in ipairs(list) do
		if table_value == value then
			return true
		end
	end
	return false
end

function utils.tableConcat(t1,t2)
	for i=1,#t2 do
		t1[#t1+1] = t2[i]
	end
	return t1
end

function utils.remap(modes, key, command, options)
	options = options or {}
	modes:gsub('.', function(mode)
		vim.keymap.set(mode, key, command, options)
	end)
end

function utils.cmdSplit(dir, key, cmd)
	local cdirx=vim.o.splitright
	local cdiry=vim.o.splitbelow

	local command = string.format("split | lua vim.cmd([[%s]])", cmd)

	--Setting window position
	if key == "h" then
		vim.o.splitright=false
	else
		vim.o.splitright=true
	end

	--Setting vertical window position
	if key == "k" then
		vim.o.splitbelow=false
	else
		vim.o.splitbelow=true
	end

	if dir == "vertical" then
		command = dir .. " " .. command
	end

	vim.cmd(command)


	vim.o.splitright=cdirx
	vim.o.splitbelow=cdiry
end

_G.utils=utils
return utils
