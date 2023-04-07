vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- init packer
  use("wbthomason/packer.nvim")

  -- prerequisites
  use "nvim-lua/plenary.nvim"

  -- icons
  use 'nvim-tree/nvim-web-devicons'

  -- telescope plugins
  use("nvim-telescope/telescope.nvim")
  use { 'nvim-telescope/telescope-fzf-native.nvim', run =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  -- vim terminal float
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }

  -- comments in nvim
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- color theme
  use({
    'projekt0n/github-nvim-theme',
    tag = 'v0.0.7',
    -- or                            branch = '0.0.x'
    config = function()
      require('github-theme').setup({
        theme_style = "dark_default",
        function_style = "italic",
        sidebars = {"qf", "vista_kind", "terminal", "packer"},
        -- Change the "hint" color to the "orange" color, and make the "error" color bright red
        comment_style = "NONE",
        keyword_style = "NONE",
        function_style = "NONE",
        variable_style = "NONE",
        -- Overwrite the highlight groups
        overrides = function(c)
          return {
            htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
            DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
            -- this will remove the highlight groups
            TSField = {},
          }
        end
      })
    end
  })
  --
  use('ThePrimeagen/harpoon')

  -- vim game
  use('ThePrimeagen/vim-be-good')

  -- treesitter syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
end)
