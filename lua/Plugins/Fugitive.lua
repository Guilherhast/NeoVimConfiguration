--# Fugitive

local opts = { expr = true, noremap = true }

--## Shortcuts
--Base
--utils.remap("n", '<space>gg', '<CMD><CR>', opts)

--Git status
utils.remap("n", '<space>gg', '<CMD>Git<CR>', opts)

--Git network push/pull
utils.remap("n", '<space>gnu', '<CMD>Git Push<CR>', opts)
utils.remap("n", '<space>gnd', '<CMD>Git Pull<CR>', opts)

--Git file
utils.remap("n", '<space>gfw', '<CMD>Gwrite<CR>', opts)
utils.remap("n", '<space>gfr', '<CMD>GRename<CR>', opts)

--Git diff
utils.remap("n", '<space>gd2', '<CMD>diffget //2<CR>', opts)
utils.remap("n", '<space>gd3', '<CMD>diffget //3<CR>', opts)

--Git show versions
utils.remap("n", '<space>gv', '<CMD>0GlLog<CR>', opts)
