return {

  "mfussenegger/nvim-lint",
  -- event = { "BufWritePre" },
  opts = {},
  config = function()
    local lint = require("lint")
    lint.linters.mypy.args = {
      "--strict",
      "--show-column-numbers",
      "--show-error-end",
      "--hide-error-codes",
      "--hide-error-context",
      "--no-color-output",
      "--no-error-summary",
      "--no-pretty",
    }
    lint.linters_by_ft = {
      -- markdown = { "markdownlint" },
      lua = { "luacheck" },
      python = { "mypy" },
      sh = { "shellcheck" },
    }
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      callback = function()
        require("lint").try_lint()
        -- for all files:
        require("lint").try_lint("typos")
      end,
    })
  end,
}
