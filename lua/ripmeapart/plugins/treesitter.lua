return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {},
  config = function()
    require("nvim-treesitter.configs").setup({
      sync_install = false,
      ignore_install = {},
      modules = {},
      ensure_installed = {
        "rust",
        "python",
        "bash",
        "go",
        "vimdoc",
        "javascript",
        "typescript",
      },
      auto_install = true,
      indent = { enable = true },
      highlight = { enable = true },
    })
  end,
}
