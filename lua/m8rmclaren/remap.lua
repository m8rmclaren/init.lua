vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keybinding to open terminal
vim.api.nvim_set_keymap('n', '<C-t>', '<cmd>terminal<CR>', { noremap = true, silent = true })

-- Exiting terminal mode with 'ESC'
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Keybinding to close the current buffer without writing
vim.api.nvim_set_keymap('n', '<leader>q', ':bd!<CR>', { noremap = true, silent = true })

-- Copy and Paste (yank and put)

-- Visual mode - Copy to clipboard
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })

-- Normal mode - Copy to clipboard
vim.api.nvim_set_keymap('n', '<leader>Y', '"+yg_', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>yy', '"+yy', { noremap = true })

-- Normal mode - Paste from clipboard
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>P', '"+P', { noremap = true })

-- Visual mode - Paste from clipboard
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>P', '"+P', { noremap = true })

