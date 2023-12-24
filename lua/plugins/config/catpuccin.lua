-- import comment plugin safely
local setup, catppuccin = pcall(require, "catppuccin")
if not setup then
	print("catppuccin not found")
	return
end

catppuccin.setup({
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		mason = true,
		lsp_saga = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
	},
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")
