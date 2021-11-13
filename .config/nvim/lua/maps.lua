local map = vim.api.nvim_set_keymap

-- map the leader key
-- n = normal mode
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

options = { noremap = true }
-- no hl
map('n', '<leader><esc>', ':nohlsearch<cr>', options)

-- File explorer
map('n', '<leader>e', ':NvimTreeToggle<cr>', options)

-- Move up/down editor lines
map('n', 'k', 'gk', options)
map('n', 'j', 'gj', options)
map('n', 'gk', 'k', options)
map('n', 'gj', 'j', options)
-- Highlight last inserted text
map('n', 'gV', '`[v`]', options)
