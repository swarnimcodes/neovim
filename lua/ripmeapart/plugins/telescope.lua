return {
	"nvim-telescope/telescope.nvim",
	opts = {},
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
		vim.keymap.set("n", "<leader>ld", builtin.diagnostics, {})
	end,
}
