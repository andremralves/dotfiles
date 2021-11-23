local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.smartcase = true
o.laststatus = 2
o.hlsearch = true       -- highlight matches
o.incsearch = true      -- search as characteres are entered
o.ignorecase = true     -- ignorecase on search
o.termguicolors = true  -- better colors i think
--o.pumblend = 20         -- popup menus transparency

-- window-local options
wo.number = true
wo.wrap = true
wo.cursorline = true 	-- highlight current line

-- buffer-local options
bo.expandtab = true
bo.tabstop = 4          -- number of visual spaces per TAB
bo.softtabstop = 4      -- number of spaces in tab when editing
bo.shiftwidth = 4       -- < & > moves 4 spaces
bo.expandtab = true     -- tab are spaces
bo.textwidth = 79       -- break line at 79

vim.cmd([[
	autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 
]])
