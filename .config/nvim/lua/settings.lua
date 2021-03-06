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
o.splitright = true

-- window-local options
wo.number = true
wo.wrap = true
wo.cursorline = true 	-- highlight current line

-- buffer-local options
o.tabstop = 4          -- number of visual spaces per TAB
o.softtabstop = 4      -- number of spaces in tab when editing
o.shiftwidth = 4       -- < & > moves 4 spaces
o.expandtab = true     -- tab are spaces
o.textwidth = 79       -- break line at 79

vim.cmd([[
	autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 
	autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2 
]])
