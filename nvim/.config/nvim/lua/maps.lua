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

-- Open term
map('n', '<leader><cr>', ':ToggleTerm<cr>', options)

-- Move up/down editor lines
map('n', 'k', 'gk', options)
map('n', 'j', 'gj', options)
map('n', 'gk', 'k', options)
map('n', 'gj', 'j', options)

-- Highlight last inserted text
map('n', 'gV', '`[v`]', options)

-- Find files using Telescope command-line sugar.
map('n', '<leader>ff' , '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fg' , '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb' , '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh' , '<cmd>Telescope help_tags<cr>', options)

-- Exit terminal on esc
map('t', '<esc>', '<C-\\><C-n>', options)

-- Window movement
map('n', '<c-h>' , '<c-w><c-h>', options)
map('n', '<c-j>' , '<c-w><c-j>', options)
map('n', '<c-k>' , '<c-w><c-k>', options)
map('n', '<c-l>' , '<c-w><c-l>', options)

