local utils = require("Personal.utils")
local telescope = require('telescope')
local actions = require('telescope.actions')

-- https://github.com/kiyoon/telescope-insert-path.nvim
local path_actions = require('telescope_insert_path')

--## Unmap the x key
--utils.remap('nxv', 'x', '<Nop>')

--## Global Variables
--Using <space>ç
local telescope_legend = {
	{ key = "çç", desc = "Find Files (All)" },
	{ key = "çt", desc = "Tree sitter" },
	{ key = "çg", desc = "Git Files (Tracked)" },
	{ key = "çs", desc = "Git status" },
	{ key = "çb", desc = "Open Buffers" },
	{ key = "çh", desc = "Help Tags" },
	{ key = "çR", desc = "Telescope Reloader" },
	{ key = "ç/", desc = "Search History" },
	{ key = "çj", desc = "Jumplist" },
	{ key = "çz", desc = "Fuzzy Find in Current Buffer" },
	{ key = "çf", desc = "Live Grep (Search Text)" },
	{ key = "çl", desc = "Grep String (Options)" },
	{ key = "çc", desc = "Commands" },
	{ key = "çm", desc = "Marks" },
	{ key = "ç?", desc = "Show this menu" },
}


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

local function show_telescope_legend()
	local pickers = require("telescope.pickers")
	local finders = require("telescope.finders")
	local conf = require("telescope.config").values
	local actions = require("telescope.actions")
	local action_state = require("telescope.actions.state")

	pickers.new({}, {
		prompt_title = "Telescope Keymaps Legend",
		finder = finders.new_table({
			results = telescope_legend,
			entry_maker = function(entry)
				-- Formats how it looks in the Telescope window
				local display_string = string.format("%-5s -> %s", entry.key, entry.desc)
				return {
					value = entry,
					display = display_string,
					ordinal = entry.key .. " " .. entry.desc,
				}
			end,
		}),
		sorter = conf.generic_sorter({}),
		attach_mappings = function(prompt_bufnr, map)
			-- Optional: Pressing Enter executes the selected command automatically
			actions.select_default:replace(function()
				actions.close(prompt_bufnr)
				local selection = action_state.get_selected_entry()
				if selection then
					-- Simulates pressing the actual keys
					local keys = vim.api.nvim_replace_termcodes(selection.value.key, true, false, true)
					vim.api.nvim_feedkeys(keys, "m", true)
				end
			end)
			return true
		end,
	}):find()
end

--Remaps
local opts = { noremap = true }

-- Files:
utils.remap("n", "çç", '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
utils.remap("n", "çg", '<cmd>lua require("telescope.builtin").git_files()<cr>', opts)
utils.remap("n", "çs", '<cmd>lua require("telescope.builtin").git_status()<cr>', opts)
utils.remap("n", "çb", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
utils.remap("n", "çh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
utils.remap("n", "çR", '<cmd>lua require("telescope.builtin").reloader()<cr>', opts)
utils.remap("n", "çm", '<cmd>lua require("telescope.builtin").marks()<cr>', opts)

-- Grep
utils.remap("n", "ç/", '<cmd>lua require("telescope.builtin").search_history()<cr>', opts)
utils.remap("n", "çj", '<cmd>lua require("telescope.builtin").jumplist()<cr>', opts)
utils.remap("n", "çz", '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>', opts)
utils.remap("n", "çf", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
utils.remap("n", "çl",
	'<cmd>lua require("telescope.builtin").grep_string{ shorten_path = true, word_match = "-w", only_sort_text = true, search = "", initial_mode = insert }<cr>',
	opts)

-- Tree sitter
utils.remap("n", "çt", '<cmd>lua require("telescope.builtin").treesitter()<cr>', opts)

-- Commands
utils.remap("n", "çc", '<cmd>lua require("telescope.builtin").commands()<cr>', opts)

utils.remap("n", "ç?", show_telescope_legend, opts)

--## Setup
telescope.setup {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git",
			_G.nvimDirPrefix
		},
		shorten_path = true,
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


