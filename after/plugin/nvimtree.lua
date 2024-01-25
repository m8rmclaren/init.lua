require("nvim-tree").setup()

local api = require "nvim-tree.api"

vim.keymap.set('n', '<leader>to', api.tree.open, {})
vim.keymap.set('n', '<leader>tc', api.tree.close, {})
