-- lua, default settings
-- lua, default settings
require("better_escape").setup {
    timeout = vim.o.timeoutlen,
    mappings = {
        i = {
            j = {
                -- These can all also be functions
                k = "<Esc>",
                j = "<Esc>",
            },
        },
        c = {
            j = {
                k = "<Esc>",
                j = "<Esc>",
            },
        },
        t = {
            j = {
                k = "<Esc>",
                j = "<Esc>",
            },
        },
        s = {
            j = {
                k = "<Esc>",
            },
        },
		v = {
			j = {
				k = function ()
					return "k"
				end
			}
		}
		--[[
        v = {
            j = {
                k = "<Esc>",
            },
        },
		]]--
    },
}
