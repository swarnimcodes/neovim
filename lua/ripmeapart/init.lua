require("ripmeapart.options")
require("ripmeapart.remaps")
require("ripmeapart.lazy")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local swarnimGroup = augroup("swarnim", {})

-- Highlight on yank
autocmd("TextYankPost", {
  group = swarnimGroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      highlight_group = "IncSearch",
      timeout = 40,
    })
  end,
})

-- require("lspconfig").gleam.setup({})
