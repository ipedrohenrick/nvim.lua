local lazy_status, lazy = pcall(require, 'lazy')
if lazy_status then
  lazy.setup({
    -- theme
    {
      'catppuccin/nvim',
      name = 'catppuccin',
      config = function()
        require('catppuccin').setup({
          flavour = 'mocha',
        })
        vim.cmd('colorscheme catppuccin')
      end,
    },

    -- ui
    {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('plugins.config.dashboard')
      end,
    },
    {
      'nvim-neo-tree/neo-tree.nvim',
      branch = 'v3.x',
      event = 'VimEnter',
      dependencies = {
        'MunifTanjim/nui.nvim',
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
      },
      config = function()
        require('plugins.config.neotree')
        require('plugins.config.web-devicons')
      end,
    },
    {
      'nvim-telescope/telescope.nvim',
      branch = '0.1.x',
      cmd = 'Telescope',
      dependencies = {
        'nvim-lua/plenary.nvim',
      },
      config = function()
        require('telescope').setup()
      end,
    },
    {
      'akinsho/bufferline.nvim',
      version = 'v3*',
      event = 'User FileOpened',
      dependencies = 'nvim-web-devicons',
      config = function()
        require('plugins.config.bufferline')
      end,
    },
    {
      'nvim-lualine/lualine.nvim',
      event = 'User FileOpened',
      config = function()
        require('plugins.config.lualine')
      end,
    },

    -- editor
    {
      'lewis6991/gitsigns.nvim',
      event = 'User FileOpened',
      config = function()
        require('gitsigns').setup()
      end,
    },
    {
      'lukas-reineke/indent-blankline.nvim',
      main = 'ibl',
      event = 'User FileOpened',
      config = function()
        require('plugins.config.blankline')
      end,
    },
    {
      'numToStr/Comment.nvim',
      event = 'User FileOpened',
      config = function()
        require('Comment').setup()
      end,
    },
    {
      'windwp/nvim-autopairs',
      event = 'User FileOpened',
      opts = {
        check_ts = true,
        ts_config = {
          lua = { 'string' },
          javascript = { 'template_string' },
          java = false,
        },
      },
      config = function(_, opts)
        require('nvim-autopairs').setup(opts)
      end,
    },
    {
      'norcalli/nvim-colorizer.lua',
      event = 'User FileOpened',
      config = function()
        require('colorizer').setup()
      end,
    },

    -- others
    { 'christoomey/vim-tmux-navigator' },
    {
      'andweeb/presence.nvim',
      opts = {
        auto_update = true,
        neovim_image_text = 'The One True Text Editor',
        main_image = 'file',
        log_level = nil,
        debounce_timeout = 10,
        enable_line_number = false,
        blacklist = {},
        buttons = true,
        file_assets = {},
        show_time = true,

        editing_text = 'Editing %s',
        file_explorer_text = 'Browsing %s',
        git_commit_text = 'Committing changes',
        plugin_manager_text = 'Managing plugins',
        reading_text = 'Reading %s',
        workspace_text = 'Working on %s',
        line_number_text = 'Line %s out of %s',
      },
      config = function(_, opts)
        require('presence').setup(opts)
      end,
    },

    -- lsp configs
    {
      'hrsh7th/nvim-cmp',
      event = 'InsertEnter',
      dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-nvim-lsp',
        'onsails/lspkind.nvim',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
      },
      config = function()
        require('plugins.lsp.cmp')
        require('luasnip').setup()
      end,
    },
    {
      'neovim/nvim-lspconfig',
      event = 'User FileOpened',
      dependencies = {
        'mason.nvim',
        'nvim-web-devicons',
        'nvim-treesitter',
        'nvimdev/lspsaga.nvim',
      },
      config = function()
        require('plugins.lsp.lspconfig')
        require('lspsaga').setup()
      end,
    },
    {
      'williamboman/mason.nvim',
      dependencies = 'williamboman/mason-lspconfig.nvim',
      cmd = {
        'Mason',
        'MasonInstall',
        'MasonLog',
        'MasonUninstall',
        'MasonUninstallAll',
        'MasonUpdate',
      },
      config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
          ensure_installed = {
            'bashls',
            'cssls',
            'html',
            'lua_ls',
            'pyright',
            'tsserver',
            'volar',
          },
        })
      end,
    },
    {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
      dependencies = 'HiPhish/nvim-ts-rainbow2',
      config = function()
        require('plugins.config.treesitter')
      end,
    },
  })
end
