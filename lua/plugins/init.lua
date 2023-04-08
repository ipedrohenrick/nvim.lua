local lazy_status, lazy = pcall(require, 'lazy')
if lazy_status then
  lazy.setup({
    { 'christoomey/vim-tmux-navigator' },
    { 'nvim-lua/plenary.nvim' },

    {
      'glepnir/dashboard-nvim',
      eventi = 'VimEnter',
      opts = function()
        return require 'plugins.config.dashboard'
      end,
      config = function(_, opts)
        require('dashboard').setup(opts)
      end
    },
    {
      'nvim-neo-tree/neo-tree.nvim',
      cmd = 'Neotree',
      dependencies = {
        'MunifTanjim/nui.nvim',
        'nvim-tree/nvim-web-devicons'
      },
      init = function()
        vim.g.neo_tree_remove_legacy_commands = true
      end,
      config = function()
        require 'plugins.config.neotree'
      end
    },
    {
      'akinsho/bufferline.nvim',
      version = 'v3*',
      dependencies = 'nvim-tree/nvim-web-devicons',
      config = function()
        require 'plugins.config.bufferline'
      end,
      event = 'BufWinEnter'
    },
    {
      'nvim-lualine/lualine.nvim',
      config = function()
        require 'plugins.config.lualine'
      end
    },
    {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end,
      event = 'BufRead'
    },
    {
      'lukas-reineke/indent-blankline.nvim',
      config = function()
        require 'plugins.config.blankline'
      end,
      event = 'BufRead'
    },
    {
      'catppuccin/nvim',
      name = 'catppuccin',
      config = function()
        require('catppuccin').setup({
          flavour = 'mocha',
          transparent_background = true
        })
        vim.cmd('colorscheme catppuccin')
      end
    }
  })
end
