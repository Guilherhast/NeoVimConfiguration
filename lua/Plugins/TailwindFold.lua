-- https://github.com/razak17/tailwind-fold.nvim
require("tailwind-fold").setup {
	enabled = false,
	highlight = { fg="#00FF00"},
	ft = {
		'html',
		'js',
		'svelte',
		'astro',
		'vue',
		'typescriptreact',
		'php',
		'blade'
	},
}


utils.remap("n", '<space>F', '<CMD>TailwindFoldToggle<CR>', { noremap = false })

--## Auto commands
vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	callback = function()
		vim.o.concealcursor=""
		vim.o.conceallevel=2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "json",
	command = "TailwindFoldEnable"
})
