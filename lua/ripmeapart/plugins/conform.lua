return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format" },
      go = { "gofmt" },
    },
    format_on_save = {
      timeout_ms = 300,
      lsp_format = "fallback",
    },
  },
}
