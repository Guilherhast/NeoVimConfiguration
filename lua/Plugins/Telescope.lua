local utils = require("GuilherHast.utils")
local telescope = require('telescope')
local actions = require('telescope.actions')

-- https://github.com/kiyoon/telescope-insert-path.nvim
local path_actions = require('telescope_insert_path')

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

	local ff_opts = { ['cwd'] = cwd,['default_text'] = prompt }
	--print(cwd)
	print(prompt)
	require('telescope.builtin').find_files(ff_opts)
end

--Remaps
local opts = { noremap = true }

--Using <space>ç
-- Files:
utils.remap("n", "çç", '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
utils.remap("n", "çg", '<cmd>lua require("telescope.builtin").git_files()<cr>', opts)
utils.remap("n", "çb", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
utils.remap("n", "çh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
utils.remap("n", "çr", '<cmd>lua require("telescope.builtin").reloader()<cr>', opts)

-- Grep
utils.remap("n", "çs", '<cmd>lua require("telescope.builtin").search_history()<cr>', opts)
utils.remap("n", "çj", '<cmd>lua require("telescope.builtin").jumplist()<cr>', opts)
utils.remap("n", "çz", '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>', opts)
utils.remap("n", "çf", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
utils.remap("n", "çl",
	'<cmd>lua require("telescope.builtin").grep_string{ shorten_path = true, word_match = "-w", only_sort_text = true, search = "", initial_mode = insert }<cr>',
	opts)

-- Commands
utils.remap("n", "çc", '<cmd>lua require("telescope.builtin").commands()<cr>', opts)

--## Setup
telescope.setup {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git",
			_G.nvimDirPrefix
		},
		mappings = {
			i = {
				--["<C-k>"]   = actions.preview_scrolling_up,
				--["<C-j>"]   = actions.preview_scrolling_down,
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-i>"] = actions.preview_scrolling_up,
				["<C-o>"] = actions.preview_scrolling_down,
				["<C-h>"] = _G.findInParent,
			},
			n = {
				-- Mine
				["dd"] = actions.delete_buffer,
				-- Inser path
				["pi"] = path_actions.insert_relpath_i_insert,
				["pI"] = path_actions.insert_relpath_I_insert,
				["pa"] = path_actions.insert_relpath_a_insert,
				["pA"] = path_actions.insert_relpath_A_insert,
				["po"] = path_actions.insert_relpath_o_insert,
				["pO"] = path_actions.insert_relpath_O_insert,
				["Pi"] = path_actions.insert_abspath_i_insert,
				["PI"] = path_actions.insert_abspath_I_insert,
				["Pa"] = path_actions.insert_abspath_a_insert,
				["PA"] = path_actions.insert_abspath_A_insert,
				["Po"] = path_actions.insert_abspath_o_insert,
				["PO"] = path_actions.insert_abspath_O_insert,
			}
		}
	}
}
