vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' --usein manager
  use 'morhetz/gruvbox' --colorscheme
  use 'Mofiqul/vscode.nvim'
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    -- config = function()
    --     vim.cmd('colorscheme rose-pine')
    -- end
   })
  use {
      'nvim-treesitter/nvim-treesitter',
      {run= ':TSUpdate'}
  } --treesitter
  use ('nvim-treesitter/playground')

  use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}
  -- use 'haorenW1025/completion-nvim' --completion for nvim
  -- use 'onsails/lspkind.nvim' --completion for nvim
  use 'nvim-treesitter/completion-treesitter' --completion for treesitter
  use 'kyazdani42/nvim-web-devicons' --nerd icons
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
  use {
  'nvim-lualine/lualine.nvim',
} --lualine

use 'jose-elias-alvarez/null-ls.nvim' --null-ls
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup ({}) end
}
use {
   "terrortylor/nvim-comment",
  config = function() require('nvim_comment').setup() end
}
-- use 'xiyaowong/nvim-transparent'
use 'leafOfTree/vim-vue-plugin'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}--telescope
use { "nvim-telescope/telescope-file-browser.nvim" }--telescope-file-browser
use 'mhartington/oceanic-next' --oceanic-next theme
use {
  'romgrk/barbar.nvim',  
  ranimation = true,
}
use 'ghifarit53/tokyonight-vim'
use 'p00f/nvim-ts-rainbow' -- rainbow brackets
use "lukas-reineke/indent-blankline.nvim"-- brackets line
use {
  'rcarriga/nvim-notify',
  config = function() require('notify').setup ({
   background_colour = "#000000",
  })end
 }--nvim-notify
use {'mbbill/undotree'} --undotree
use {'tpope/vim-fugitive'} --git
use ('Tsuzat/NeoSolarized.nvim')--NeoSolarized theme
end)
