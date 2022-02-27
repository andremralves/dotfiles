require('plugins')
require('settings')
require('maps')

-- plugins config
--vim.cmd[[source ~/.config/nvim/lua/plugins-config/cocnvim.vim]]         -- COC nvim
require('plugins-config/lspconfig')         -- lspconfig keymapings  
require('plugins-config/nvim-cmp')          -- Autocompletion  
require('plugins-config/nvim-tree')         -- Side tree
require('plugins-config/galaxyline')        -- Statusline
--require('plugins-config/tokyonight')	    -- Colorscheme
vim.cmd[[colorscheme dracula]]
require('plugins-config/nvim-treesitter')	-- Better Syntax highlighting 
require('plugins-config/gitsigns')	        -- Git
require('nvim-autopairs').setup{}
