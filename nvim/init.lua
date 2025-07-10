---idk---
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

---add files---
require("config.lazy")
require("config.keymaps")

vim.cmd.colorscheme "catppuccin"

---lsp setup---
local lsp = vim.lsp.enable
lsp('lua_ls')
lsp('pyright')
lsp('jdtls')
lsp('gopls')
