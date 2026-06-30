local utils = require("Personal.utils")

utils.remap("n", '<leader>/', ':Rg ', { noremap = true })
utils.remap("n", '<leader>?', ':Rg -i ', { noremap = true })
