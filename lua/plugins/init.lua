local lazy_status, lazy = pcall(require, 'lazy')
if lazy_status then
  lazy.setup({
    { 'christoomey/vim-tmux-navigator' },
    {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        return require 'plugins.config.dashboard'
      end
    },
    {
      'nvim-neo-tree/neo-tree.nvim',
      event = 'VimEnter',
      dependencies = {
        'MunifTanjim/nui.nvim',
        'nvim-web-devicons',
        'nvim-lua/plenary.nvim'
      },
      init = function()
        vim.g.neo_tree_remove_legacy_commands = true
      end,
      config = function()
        require 'plugins.config.neotree'
      end
    },
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.1',
      cmd = 'Telescope',
      config = function()
        require('telescope').setup()
      end
    },
    {
      'akinsho/bufferline.nvim',
      version = 'v3*',
      event = { 'BufRead', 'BufNewFile' },
      dependencies = 'nvim-web-devicons',
      config = function()
        require 'plugins.config.bufferline'
      end
    },
    {
      'nvim-lualine/lualine.nvim',
      event = { 'BufRead', 'BufNewFile'},
      config = function()
        require 'plugins.config.lualine'
      end
    },
    {
      'lewis6991/gitsigns.nvim',
      event = 'BufRead',
      config = function()
        require('gitsigns').setup()
      end,
    },
    {
      'lukas-reineke/indent-blankline.nvim',
      event = 'BufRead',
      config = function()
        require 'plugins.config.blankline'
      end,
    },
    {
      'numToStr/Comment.nvim',
      event = 'InsertEnter',
      config = function()
        require('Comment').setup()
      end
    },
    {
      'windwp/nvim-autopairs',
      event = { 'BufRead', 'BufNewFile' },
      opts = {
        check_ts = true,
        ts_config = {
          lua = {'string'},
          javascript = {'template_string'},
          java = false,
        }
      },
      config = function(_, opts)
        require('nvim-autopairs').setup(opts)
      end
    },
    {
      'norcalli/nvim-colorizer.lua',
      event = 'BufRead',
      config = function()
        require('colorizer').setup()
      end
    },
    {
      'nvim-tree/nvim-web-devicons',
      lazy = true,
      config = function()
        require('plugins.config.web-devicons')
      end
    },
    {
      'andweeb/presence.nvim',
      opts = {
        auto_update = true,
        neovim_image_text = "The One True Text Editor",
        main_image = "file",
        log_level = nil,
        debounce_timeout = 10,
        enable_line_number = false,
        blacklist = {},
        buttons = true,
        file_assets = {},
        show_time = true,

        editing_text = "Editing %s",
        file_explorer_text = "Browsing %s",
        git_commit_text = "Committing changes",
        plugin_manager_text = "Managing plugins",
        reading_text = "Reading %s",
        workspace_text = "Working on %s",
        line_number_text = "Line %s out of %s",
      },
      config = function(_, opts)
        require('presence').setup(opts)
      end
    },

    -- lang configs
    {
      'hrsh7th/nvim-cmp',
      event = 'InsertEnter',
      dependencies = {
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'onsails/lspkind.nvim',
        'LuaSnip',
      },
      config = function()
        require('plugins.lsp.cmp')
      end
    },
    {
      'L3MON4D3/LuaSnip',
      lazy = true,
      dependencies = 'rafamadriz/friendly-snippets',
      config = function()
        require('luasnip').setup()
      end
    },
    {
      'neovim/nvim-lspconfig',
      event = { 'BufRead', 'BufNewFile' },
      dependencies = {
        'mason.nvim'
      },
      config = function()
        require('plugins.lsp.lspconfig')
      end
    },
    {
      'williamboman/mason.nvim',
      cmd = {
        'Mason',
        'MasonInstall',
        'MasonInstallAll',
        'MasonUninstall',
        'MasonUninstallAll',
        'MasonLog'
      },
      opts = {
        ensure_installed = {
          'lua-language-server',
        }
      },
      config = function(_, opts)
        require('mason').setup(opts)

        vim.api.nvim_create_user_command('MasonInstallAll', function ()
          vim.cmd('MasonInstall ' .. table.concat(opts.ensure_installed, " "))
        end, {})
      end
    },
    {
      'nvimdev/lspsaga.nvim',
      dependencies = {
        'nvim-web-devicons',
        'nvim-treesitter/nvim-treesitter',
      },
      config = function()
        require('lspsaga').setup()
      end
    },
    {
      'nvim-treesitter/nvim-treesitter',
      event = { 'BufRead', 'BufNewFile' },
      cmd = { 'TSIntall', 'TSBufEnable', 'TSBufDisable', 'TSModuleInfo' },
      build = ':TSUpdate',
      config = function()
        require('plugins.config.treesitter')
      end
    },
    -- theme
    {
      'catppuccin/nvim',
      name = 'catppuccin',
      config = function()
        require('catppuccin').setup({
          flavour = 'mocha',
          -- transparent_background = true
        })
        vim.cmd('colorscheme catppuccin')
      end
    }
  })
end
