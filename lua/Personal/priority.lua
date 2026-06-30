-- # Priority file
--
-- This file is used for settings that should be loaded before.
-- It will avoid crashing and staying without these settings

-- ## Functions
--
-- Edit the init file
vim.api.nvim_create_user_command('Jlua', function()
  local init_path
  if vim.fn.has('win32') == 1 then
    init_path = vim.fn.stdpath('config') .. '\\init.lua'
  else
    init_path = vim.fn.stdpath('config') .. '/init.lua'
  end
  vim.cmd('edit ' .. init_path)
end, {})

