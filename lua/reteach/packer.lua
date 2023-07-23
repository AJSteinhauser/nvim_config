-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()

      require("toggleterm").setup()
  end}
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use('folke/trouble.nvim')
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
  use { 'joeveiga/ng.nvim'}
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
  use({ 
	  'rose-pine/neovim',
	  as = 'rose-pine', 
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use('ThePrimeagen/vim-be-good')
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use{'sjl/vitality.vim'}
  use('tpope/vim-fugitive')
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use{'lambdalisue/fern.vim'}
use{'hrsh7th/cmp-cmdline'}

use({"iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
