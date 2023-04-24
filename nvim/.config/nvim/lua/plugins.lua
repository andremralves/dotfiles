-- check if packer is installed and install if not

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function()

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client 
    use 'williamboman/nvim-lsp-installer' -- Lsp installer

    use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins

    -- An inplementation of popup API
    -- use 'nvim-lua/popup.nvim'

    -- Completion engine
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use "rafamadriz/friendly-snippets"
    use 'saadparwaiz1/cmp_luasnip'

    -- Java jdtls support
    -- use 'mfussenegger/nvim-jdtls'

    -- Nvim Tree - Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end
    }

    -- Fuzy Finder
    use {
  	    'nvim-telescope/telescope.nvim',
  	    requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Nvim treesitter - better syntaxhighlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- We recommend updating the parsers on update

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Statusline
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Git
    use 'lewis6991/gitsigns.nvim'

    -- Theme
    -- use 'folke/tokyonight.nvim'
    --use {'dracula/vim', as = 'dracula'}
    --use 'overcache/NeoSolarized'
    --use 'shaunsingh/nord.nvim'
    use({
      'projekt0n/github-nvim-theme', tag = 'v0.0.x',
      config = function()
        require('github-theme').setup({
          -- ...
        })
        vim.cmd('colorscheme github_dark_default')
      end
    })

    -- Terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    -- Formatting
    -- use 'sbdchd/neoformat'

    -- Show RGB colors
    use 'norcalli/nvim-colorizer.lua'

    -- Startup
    use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
}
end,
config = {
  display = {
    open_fn = function()
	return require('packer.util').float({ border = 'rounded' })
    end
  }
}})
