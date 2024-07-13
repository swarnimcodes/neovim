return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"rust",
				"python",
				"bash",
				"go",
				"vimdoc",
			},
			auto_install = true,
			indent = { enable = true },
			highlight = { enable = true },
		})
	end,
}
