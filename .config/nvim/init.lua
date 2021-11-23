require('plugins')
require('settings')
require('maps')

-- plugins config
require('plugins-config/lspconfig')         -- lspconfig keymapings  
require('plugins-config/nvim-cmp')          -- Autocompletion  
require('plugins-config/nvim-tree')         -- Side tree
require('wlsample.airline')                 -- Statusline
require('plugins-config/tokyonight')	    -- Colorscheme
require('plugins-config/nvim-treesitter')	-- Better Syntax highlighting 
require('nvim-autopairs').setup{}           -- Pairs {} [] ()
