--# Emmet
--## Variables

vim.g.user_emmet_leader_key='<f1>'
vim.g.user_emmet_next_key='<leader>l'
vim.g.user_emmet_previous_key='<leader>h'
vim.g.user_emmet_mode = 'a'

vim.g.user_emmet_settings = {
	php = {
		extends = 'html',
		filters = 'c',
	},
	["emmet.preferences"] = { attributeQuotes = "single" },
	["emmet.syntaxProfiles"] = { html = { attr_quotes = "single" } },
	["emmet.includeLanguages"] = {
		html = "html",
		javascriptreact = "html",
		typescriptreact = "html",
		javascript = "javascriptreact",
	}
}

--##
