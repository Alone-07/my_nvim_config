vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' --usein manager
  use 'morhetz/gruvbox' --colorscheme
  use {
      'nvim-treesitter/nvim-treesitter',
  } --treesitter
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {
      "williamboman/nvim-lsp-installer",
      require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
  }

  use 'haorenW1025/completion-nvim' --completion for nvim
  use 'nvim-treesitter/completion-treesitter' --completion for treesitter
  use 'kyazdani42/nvim-web-devicons' --nerd icons
  use 'preservim/nerdtree'
  use {
  'nvim-lualine/lualine.nvim',
} --lualine

use 'jose-elias-alvarez/null-ls.nvim'
use 'MunifTanjim/prettier.nvim'

use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
-- For vsnip users.
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
--autobrakets
use 'jiangmiao/auto-pairs'
end)
