

require('plugins')
require('settings')
require('maps')

-- plugins config
--vim.cmd[[source ~/.config/nvim/lua/plugins-config/cocnvim.vim]]         -- COC nvim
require('plugins-config/lspconfig')         -- lspconfig keymapings  
require('plugins-config/nvim-cmp')          -- Autocompletion  
require('plugins-config/nvim-tree')         -- Side tree
require('plugins-config/galaxyline')        -- Statusline

-- Colorscheme
require('plugins-config/tokyonight')
--vim.cmd[[colorscheme dracula]]
--vim.cmd[[colorscheme NeoSolarized]]
--vim.cmd[[colorscheme nord]]

require('plugins-config/nvim-treesitter')	-- Better Syntax highlighting 
require('plugins-config/gitsigns')	        -- Git
require('plugins-config/neoformat')	        -- Formatter 
require('nvim-autopairs').setup{}
require'colorizer'.setup()
