return {
	"kvrohit/rasmus.nvim",
	config = function()
		vim.g.rasmus_transparent = true
		-- vim.g.rasmus_variant = "monochrome"

		vim.g.rasmus_italic_comments = false
		vim.g.rasmus_italic_keywords = false
		vim.g.rasmus_italic_booleans = false
		vim.g.rasmus_italic_functions = false
		vim.g.rasmus_italic_variables = false

		vim.g.rasmus_bold_comments = false
		vim.g.rasmus_bold_keywords = false
		vim.g.rasmus_bold_booleans = false
		vim.g.rasmus_bold_functions = false
		vim.g.rasmus_bold_variables = false
	end,
}
