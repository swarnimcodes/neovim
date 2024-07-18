return {
  "nvim-telescope/telescope.nvim",
  opts = {},
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>f", builtin.find_files, {})
    vim.keymap.set("n", "<leader>b", builtin.buffers, {})
    vim.keymap.set("n", "<leader>d", builtin.diagnostics, {})
    vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
  end,
}
