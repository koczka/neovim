local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Save last nvim server id when nvim loses focus (FocusLost)
autocmd("FocusLost", {
	group = augroup("focus_lost", {}),
	pattern = "*",
	callback = function()
		local servername = vim.v.servername
		vim.fn.writefile({ servername }, "/tmp/nvim-focuslost")
	end,
})
