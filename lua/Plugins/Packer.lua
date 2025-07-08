--https://github.com/wbthomason/packer.nvim/issues/4
vim.cmd [[packadd packer.nvim]] --Ugly
--vim.fn['packeradd']('packer.nvim') --Useless

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	--## Dependecies
	use 'nvim-lua/plenary.nvim'        -- Telescope
	use 'nvim-treesitter/nvim-treesitter' --Tailwind-fold
	use 'stevearc/dressing.nvim'
	use 'MunifTanjim/nui.nvim'
	use 'MeanderingProgrammer/render-markdown.nvim'

	--## Optional dependencies
	--use 'nvim-tree/nvim-wjb-devicons' -- or use 'echasnovski/mini.icons'
	--use 'echasnovski/mini.icons'
	use 'nvim-tree/nvim-web-devicons' -- For icons
	use 'hrsh7th/nvim-cmp'
	use 'HakonHarnes/img-clip.nvim'

	--## Auto complete
	use { 'neoclide/coc.nvim', branch = 'release' }
	use 'mattn/emmet-vim'
	--use {'SirVer/ultisnips', after='coc.nvim'}
	--use {'honza/vim-snippets', after = 'ultisnips'}
	--use {'rbonvall/snipmate-snippets-bib', after = 'ultisnips'}


	--## Fast editing
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'

	--use {'jdhao/better-escape.vim', event = 'InsertEnter'}
	-- lua with packer.nvim
	use {
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup()
		end,
	}
	--## Enviroment

	--## Interface
	--### Airline
	use 'powerline/powerline-fonts'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	--### Other interface tools
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
	use { 'kiyoon/telescope-insert-path.nvim'}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}


	use { "akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end }
	--use 'airblade/vim-gitgutter' --Watchout for the mappins it maps <leader>h
	use 'm4xshen/smartcolumn.nvim'
	use 'ggandor/lightspeed.nvim'

	use 'razak17/tailwind-fold.nvim'

	--## External tools
	use 'tpope/vim-fugitive'
	use 'habamax/vim-godot' --Need to run CocConfig See on github
	use 'jremmen/vim-ripgrep'
	use({
		"barrett-ruth/live-server.nvim",
		run = "yarn global add live-server",
	})
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown", "md" } end,
		ft = { "markdown", "md" },
	})

	use {
		'Equilibris/nx.nvim',
		requires = {
			'nvim-telescope/telescope.nvim',
		},
		config = function()
			require("nx").setup {}
		end
	}

	--## AI

	use { "zbirenbaum/copilot.lua",
	event = "InsertEnter",
	config = function ()
		require('Plugins.Copilot') -- For lazy loading
	end
	} -- Well documentated
	-- [[ -- Just add an space after --
	use {
		'yetone/avante.nvim',
		branch = 'main',
		run = 'make',
		requires = {
			'nvim-treesitter/nvim-treesitter',
			'stevearc/dressing.nvim', -- For better UI
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',   -- For UI elements
			'MeanderingProgrammer/render-markdown.nvim', -- For rendering markdown
			-- Optional dependencies for enhanced features
			'hrsh7th/nvim-cmp', -- For autocompletion integration
			'nvim-tree/nvim-web-devicons', -- For icons
		},
		config = function()
			require('Plugins.Avante')
		end
	}
	--]]
	--[[
	use {
		'yetone/avante.nvim',
		branch = 'main',
		run = 'make',
		config = function()
			require('avante').setup()
		end
	}
	--]]

	--use {'instant-markdown/vim-instant-markdown', 'for': 'markdown', 'do': 'yarn install'}

	--## Languages
	use 'pangloss/vim-javascript' -- JavaScript support
	use 'maxmellon/vim-jsx-pretty' -- JS and JSX syntax
	use 'jamestthompson3/vim-jest'
	--use 'claco/jasmine.vim'
	use 'burnettk/vim-angular'
	use 'ricpelo/vim-gdscript'
	use 'folke/neodev.nvim'
	use 'hashivim/vim-terraform'

	--use 'calviken/vim-gdscript3'

	use 'ekalinin/Dockerfile.vim'

	--use 'tpope/vim-rails'

	--## To try after

	-- use 'svermeulen/vim-easyclip'
	--use 'junegunn/vim-easy-align'
	--use 'mhinz/vim-signify'
end
)
