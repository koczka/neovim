local lp_status, indent = pcall(require, "indent_blankline")
if not lp_status then
	return
end

indent.setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
})
