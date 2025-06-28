local vim = vim
local Plug = vim.fn['plug#']
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop=2
vim.opt.mouse='a'
vim.opt.expandtab = true
vim.optfiletype = true

vim.call('plug#begin')
Plug('neovim/nvim-lspconfig')
Plug('f-person/git-blame.nvim')
Plug('nvim-tree/nvim-tree.lua')
vim.call('plug#end')

vim.g.gitblame_enabled = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local lspconfig = require('lspconfig')
lspconfig.ts_ls.setup {}
lspconfig.lua_ls.setup {}
