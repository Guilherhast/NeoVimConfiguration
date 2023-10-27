-- # Nx extension

-- ## Setup
require('nx').setup({nx_cmd_root='nx'})

-- ## Commands
vim.api.nvim_create_user_command("NxActions", "Telescope nx actions", {})
vim.api.nvim_create_user_command("NxAffected", "Telescope nx affected", {})
vim.api.nvim_create_user_command("NxRunMany", "Telescope nx run_many", {})
vim.api.nvim_create_user_command("NxGenerators", "Telescope nx generators", {})
vim.api.nvim_create_user_command("NxWorkspaceGenerators", "Telescope nx external_generators", {})
vim.api.nvim_create_user_command("NxExternalGenerators", "Telescope nx workspace_generators", {})
