-- Description: Avante.nvim configuration for Gemini provider
-- https://github.com/yetone/avante.nvim/issues/1852

-- [[
local config = {
	windows = {
		ask = {
			floating = true,
			border = "rounded",
			start_insert = true
		}
	},
	hints = {enabled = false},
	opts = {
		provider = "gemini",
		model = "gemini",
		providers = {
			gemini = {
				-- The URL of the Gemini server
				url = "gemini://gemini.circumlunar.space",
				-- The path to the Gemini client binary
				client = "curl",
				-- Additional arguments for the Gemini client
				args = {
					"--user-agent", "Avante.nvim"
				},
				-- Timeout for requests in seconds
				timeout = 10,
				-- Whether to use TLS
				tls = true,
			},

		}
	},
}

require('avante_lib').load()
require('avante').setup(config)

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		-- Check if the AvanteSwitchProvider command exists before trying to execute it.
		-- This prevents errors if Avante.nvim hasn't loaded yet for some reason.
		if vim.fn.exists(":AvanteSwitchProvider") == 2 then
			-- Execute the command to switch the active AI provider to 'gemini'.
			vim.cmd("AvanteSwitchProvider " .. config.opts.provider)
		end
	end,
})
--]]
