local utils = require("GuilherHast.utils")
local telescope = require('telescope')
local actions = require('telescope.actions')

--## Unmap the x key
--utils.remap('nxv', 'x', '<Nop>')

--## Global Variables

--## Functions
function _G.findInParent(prompt_bufnr)
	local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
	local prompt = picker:_get_prompt()

	local cwd = picker.cwd
	if cwd == nil then
		cwd = vim.fn.getcwd()
	end
	cwd = string.match(cwd, '(.*)/.*')

	local ff_opts = { ['cwd'] = cwd , ['default_text'] = prompt}
	--print(cwd)
	print(prompt)
	require('telescope.builtin').find_files(ff_opts)
end


--Remaps
local opts = { noremap = true }

--Using <space>x
utils.remap("n","<space>xx", '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
--utils.remap("n","<space>xx", '<cmd>lua _G.findInCurrent()<cr>', opts)
utils.remap("n","<space>xg", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
utils.remap("n","<space>xb", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
utils.remap("n","<space>xh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)

--Using <space>ç
utils.remap("n","çç", '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
utils.remap("n","çg", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
utils.remap("n","çb", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
utils.remap("n","çh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
--TODO: Make it start on insert
utils.remap("n","çl", '<cmd>lua require("telescope.builtin").grep_string{ shorten_path = true, word_match = "-w", only_sort_text = true, search = "" }<cr> ' , opts)

--## Setup
telescope.setup{
	defaults={
		file_ignore_patterns={
			"node_modules",
			".git",
			_G.nvimDirPrefix
		},
		mappings = {
			i = {
				--["<C-k>"]   = actions.preview_scrolling_up,
				--["<C-j>"]   = actions.preview_scrolling_down,
				["<C-j>"]   = actions.move_selection_next,
				["<C-k>"]   = actions.move_selection_previous,
				["<C-i>"]   = actions.preview_scrolling_up,
				["<C-o>"]   = actions.preview_scrolling_down,
				["<C-h>"]   =   _G.findInParent,
			},
			n = {
				["dd"]   = actions.delete_buffer,
			}
		}
	}
}
