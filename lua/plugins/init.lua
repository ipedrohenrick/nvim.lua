local lazy_status, lazy = pcall(require, 'lazy')
if lazy_status then
  lazy.setup({
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
      'nvim-tree/nvim-tree.lua',
      cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
      opts = function()
        return require 'plugins.config.nvimtree'
      end,
      config = function(_, opts)
        require('nvim-tree').setup(opts)
      'akinsho/bufferline.nvim',
      version = 'v3*',
      dependencies = 'nvim-tree/nvim-web-devicons',
      config = function()
        require 'plugins.config.bufferline'
      end,
      event = 'BufWinEnter'
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
