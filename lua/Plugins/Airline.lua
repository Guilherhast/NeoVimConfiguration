--# Airline and Airline themes

--## Variables

vim.g.airline_theme = 'dew'

vim.g.airline_powerline_fonts = true

if vim.g.airline_symbols ~= nil then
	vim.g.airline_symbols = {}
end


vim.g.airline_section_z = "%{v:lua.AirlineSectionZ()}"

function _G.AirlineSectionZ()
	local line = vim.fn.line('.')
	local total = vim.fn.line('$')
	local col = vim.fn.col('.')
	return string.format("%02d/%d : %02d", line, total, col)
end
