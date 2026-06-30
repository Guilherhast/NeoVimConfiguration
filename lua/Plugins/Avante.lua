-- Description: Avante.nvim configuration
-- https://github.com/yetone/avante.nvim/issues/1852
-- [[
--## Providers configuration
local perplexity_provider_pro = {
	__inherited_from = "openai",
	api_key_name = "AVANTE_PERPLEXITY_API_KEY",
	endpoint = "https://api.perplexity.ai",
	model = "sonar-pro",
	extra_request_body = {
		max_tokens = 4096,
		temperature = 0.7
	},
}

local perplexity_provider_research = {
	__inherited_from = "openai",
	api_key_name = "AVANTE_PERPLEXITY_API_KEY",
	endpoint = "https://api.perplexity.ai",
	model = "sonar-deep-research",
	extra_request_body = {
		max_tokens = 4096,
		temperature = 0.7
	},
}

local perplexity_provider_reasoning = {
	__inherited_from = "openai",
	api_key_name = "AVANTE_PERPLEXITY_API_KEY",
	endpoint = "https://api.perplexity.ai",
	model = "sonar-reasoning-pro",
	extra_request_body = {
		max_tokens = 4096,
		temperature = 0.7
	},
}

local perplexity_provider_r1 = {
	__inherited_from = "openai",
	api_key_name = "AVANTE_PERPLEXITY_API_KEY",
	endpoint = "https://api.perplexity.ai",
	model = "r1-1776",
	extra_request_body = {
		max_tokens = 4096,
		temperature = 0.7
	},
}

local gemini_provider = {
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
	tls = true,
}

--## Writing the config
local config = {
	provider = "gemini",
	hints = {
		enabled = false,
	},
	selection = {
		enabled = false
	},
	behavior = {
		auto_set_keymaps = false,
	},
	windows = {
		wrap = false,
		position = "bottom",
		width = 75,
		ask = {
			floating = true,
			start_insert = false
		},
		spinner = {
			editing = { "✎" },
			generating = { "✢" },
			thinking = { "∑" },
		}
	},
	providers = {
		gemini = gemini_provider,
		perplexity = perplexity_provider_pro,
		pppro = perplexity_provider_pro,
		pprpro = perplexity_provider_reasoning,
		ppdeep = perplexity_provider_research,
		ppr1 = perplexity_provider_r1,
		--[[
		ppclaude = perplexity_provider_claude,
		ppreasoning = perplexity_provider_reasoning,
		ppds = perplexity_provider_deepseek,
		ppsonar = perplexity_provider_sonar,
		ppgpt = perplexity_provider_gpt4,
		--]]
	},
	mappings = {
		ask = "<space>aa", -- ask
		edit = "<space>ae", -- edit
		refresh = "<space>ar", -- refresh
		submit = {
			normal = "<CR>",
			insert = "<C-CR>",
		}
	},
}

require('avante_lib').load()
require('avante').setup(config)

-- Interface mappings
vim.api.nvim_set_keymap('n', '<space>at', ':AvanteToggle<CR>', { noremap = true, silent = true })
-- Action mappings
vim.api.nvim_set_keymap('n', '<space>ac', ':AvanteChat<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>an', ':AvanteChatNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>ah', ':AvanteHistory<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>al', ':AvanteClear<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>ax', ':AvanteStop<CR>', { noremap = true, silent = true })
-- Switch mappings
vim.api.nvim_set_keymap('n', '<space>asp', ':AvanteSwitchProvider ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>asi', ':AvanteSwitchInputProvider ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>ass', ':AvanteSwitchSelectorProvider ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>asm', ':AvanteModels<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>a?', ':AvanteModels<CR>', { noremap = true, silent = true })

-- Function to show all providers using Telescope

-- Add a keymap to call the function
vim.api.nvim_set_keymap('n', '<space>ap', ':lua show_providers_telescope()<CR>', { noremap = true, silent = true })

-- Use telescope to list all providers
-- TODO :
--

--[[
AvanteAsk
AvanteBuild
AvanteChat
AvanteChatNew
AvanteClear
AvanteEdit
AvanteFocus
AvanteHistory
AvanteModels
AvanteRefresh
AvanteShowRepoMap
AvanteStop
AvanteSwitchInputProvider
AvanteSwitchProvider
AvanteSwitchSelectorProvider
AvanteToggle
--]]
