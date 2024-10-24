-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = { import = "ripmeapart.plugins" },
  install = { colorscheme = { "habamax" } }, -- colorscheme that will be used when installing plugins.
  checker = { enabled = false }, -- automatically check for plugin updates
  change_detection = { notify = false },
})
-- vim.cmd.colorscheme("catppuccin")
vim.cmd.colorscheme("rose-pine")
-- vim.cmd.colorscheme("tokyonight")
-- vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("alabaster")
-- vim.cmd.colorscheme("rasmus")
-- vim.cmd.colorscheme("habamax")
-- vim.cmd.colorscheme("pywal16")

require("luasnip.loaders.from_vscode").lazy_load()
