-- Copilot Configuration
-- Documentation:
-- https://github.com/zbirenbaum/copilot.lua?ref=tamerlan.dev
require('copilot').setup(
	{
		panel = {
			enabled = true,
			auto_refresh = false,
			keymap = {
				jump_prev = "<tab>",
				jump_next = "<S-tab>",
				accept = "<CR>",
				refresh = "gr",
				open = "<f2>"
			},
			layout = {
				position = "right", -- | top | left | right | horizontal | vertical
				ratio = 0.4
			},
		},
		suggestion = {
			enabled = true,
			auto_trigger = false,
			hide_during_completion = true,
			debounce = 75,
			trigger_on_accept = true,
			keymap = {
				accept = "<C-l>",
				dismiss = "<C-h>",
				accept_word = false,
				accept_line = false,
				next = "<C-j>",
				prev = "<C-k>",
			},
		},
	})

-- Map toggle auto trigger
vim.keymap.set('n', '<space>ca', function()
	require('copilot.suggestion').toggle_auto_trigger()
end, { desc = 'Toggle Copilot Auto Trigger' })
-- Map open panel
vim.keymap.set('n', '<space>cp', function()
	require('copilot.panel').open()
end, { desc = 'Open Copilot Panel' })
-- Toggle auto trigger on insert mode
vim.keymap.set('i', '<C-space>', function()
	require('copilot.suggestion').toggle_auto_trigger()
end, { desc = 'Toggle Copilot Auto Trigger' })
