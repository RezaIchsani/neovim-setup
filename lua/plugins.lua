local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)
  -- Packer (plugin manager for neovim
  use 'wbthomason/packer.nvim'

  -- Themes (onedark.nvim)
  use 'navarasu/onedark.nvim'

  -- Startup Nvim
  use 'echasnovski/mini.nvim'

  -- Nvim Web Dev Icons
  use 'nvim-tree/nvim-web-devicons'
  -- LSP UIs
  use 'glepnir/lspsaga.nvim'

  -- Snippet
  use 'L3MON4D3/LuaSnip'
  -- Lualine
  use 'nvim-lualine/lualine.nvim'

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'   -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'     -- Completion

  -- LSP
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as language server to inject LSP diagnostic, code action and more via Lua
  use 'MunifTanjim/prettier.nvim'       -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use 'HiPhish/nvim-ts-rainbow2'
  -- File browser
  -- Telescope file browser
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- Nvim tree
  use 'nvim-tree/nvim-tree.lua' -- Alternative file browser
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'MunifTanjim/nui.nvim',
    }
  }

  -- Bufferline
  use 'akinsho/bufferline.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- Notify
  use 'rcarriga/nvim-notify'
  use 'folke/trouble.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  -- Comment nvim
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
