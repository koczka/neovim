return {
	-- essential plugins
	"tpope/vim-surround", -- add, delete, change surroundings (it's awesome)
	"vim-scripts/ReplaceWithRegister", -- replace with register contents using motion (gr + motion)
	"nvim-lua/plenary.nvim", -- lua functions that many plugins use
	"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	"szw/vim-maximizer", -- maximizes and restores current window
	"norcalli/nvim-colorizer.lua", -- hex code colorizer
	"nvim-tree/nvim-tree.lua", -- file explorer
	"numToStr/Comment.nvim", -- toggle comments (gc + motion)
	"echasnovski/mini.map", -- minimap

	-- look and feel
	"kyazdani42/nvim-web-devicons",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"nvim-lualine/lualine.nvim",

	-- fuzzy finding w/ telescope
	{ "nvim-telescope/telescope.nvim", dependencies = "tsakirist/telescope-lazy.nvim" },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	-- autocompletion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths

	-- snippets
	"L3MON4D3/LuaSnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	-- "rafamadriz/friendly-snippets", -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	"neovim/nvim-lspconfig", -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	"nvimdev/lspsaga.nvim", -- enhanced lsp uis
	"jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
	"nvim-treesitter/nvim-treesitter",

	"windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
	{ "windwp/nvim-ts-autotag", dependencies = "nvim-treesitter" }, -- autoclose tags
	"lewis6991/gitsigns.nvim", -- show line modifications on left hand side
	"f-person/git-blame.nvim", -- git blame information
	"ethanholz/nvim-lastplace", -- open document on last edited position
	"xiyaowong/nvim-transparent", -- background transparency
	"joeveiga/ng.nvim", -- angular service

	-- discord presence
	-- "andweeb/presence.nvim",

	-- highlight comments
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	-- tailwind class sorting
	require("lazy").setup({
		{
			"laytan/tailwind-sorter.nvim",
			dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
			build = "cd formatter && npm i && npm run build",
			config = true,
		},
	}),

	-- indent lines
	"lukas-reineke/indent-blankline.nvim",

	-- lazygit in vim
	"kdheepak/lazygit.nvim",

	-- dim inactive splits
	"levouh/tint.nvim",
}
