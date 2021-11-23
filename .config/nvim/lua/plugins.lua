-- check if packer is installed and install if not

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(function()

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Lsp and completion related plugins
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind-nvim'
    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Nvim Tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end
    }

    -- Nvim treesitter - better syntaxhighlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- We recommend updating the parsers on update

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Statusline
    use 'windwp/windline.nvim'

    -- Theme
    use 'folke/tokyonight.nvim'
    
end)
