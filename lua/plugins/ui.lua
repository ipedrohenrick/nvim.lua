return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'echasnovski/mini.icons',
    event = 'VeryLazy',
    config = function()
      require('plugins.config.lualine')
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.*',
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
      { '<leader>ff', '<cmd>Telescope find_files<CR>', 'Telescope find files' },
      { '<leader>fg', '<cmd>Telescope live_grep<CR>', 'Telescope live grep' },
      { '<leader>fb', '<cmd>Telescope buffers<CR>', 'Telescope list buffers' },
      { '<leader>fs', '<cmd>Telescope git_status<CR>', 'Telescope git status' },
    },
    opts = {
      defaults = {
        initial_mode = 'normal',
        file_ignore_patterns = {
          '.git',
          '*.sqlite*',
          'venv',
          '.venv',
          '__pycache__',
        },
        mappings = {
          n = {
            ['q'] = 'close'
          }
        }
      },
      pickers = {
        find_files = {
          previewer = false,
          hidden = true,
          theme = 'dropdown'
        },
        live_grep = {
          hidden = true,
          theme = 'dropdown'
        },
        buffers = {
          previewer = false,
          theme = 'dropdown',
          mappings = {
            n = {
              ['d'] = require('telescope.actions').delete_buffer
            }
          }
        },
        git_status = {
          previewer = false,
          theme = 'dropdown'
        }
      },
    },
  },
  {
    'folke/which-key.nvim',
    version = 'v3.*',
    event = 'VeryLazy',
    opts = {
      preset = 'helix',
      icons = {
        mappings = false
      },
      spec = {
        {
          mode = { 'n' },
          { '<leader>w', desc = 'Write' },
          { '<leader>q', desc = 'Quit'},
          -- telescope
          { '<leader>f', group = 'find/files' },
          { '<leader>ff', desc = 'Telescope find files' },
          { '<leader>fg', desc = 'Telescope live grep' },
          { '<leader>fb', desc = 'Telescope list buffers' },
          { '<leader>fs', desc = 'Telescope git status' },
          -- Oil files
          { '<leader>e', desc = 'Oil files' },
          -- touble
          { '<leader>t', group = 'Trouble'},
          { '<leader>tx', desc = 'Project diagnostics'},
          { '<leader>tX', desc = 'Buffer diagnostics'},
          { '<leader>td', desc = 'LSP definitions'},
          -- others
          { '<leader>g', desc = 'GrugFar'},
          { '<leader>l', desc = 'Lazy' },
        },
      }
    }
  },
  {
    'stevearc/oil.nvim',
    version = 'v2.15.*',
    dependencies = 'echasnovski/mini.icons',
    keys = {
      { '<leader>e', '<cmd>Oil<CR>', 'Oil files' }
    },
    config = function()
      require('oil').setup({
        view_options = {
          is_hidden_file = function(name, _)
            return name == '.git'
          end
        },
        keymaps = {
          ['<leader>e'] = { 'actions.close', mode = 'n' }
        }
      })
    end
  },
  {
    'echasnovski/mini.icons',
    version = 'v0.16.*',
    lazy = true,
    config = function()
      require('mini.icons').setup()
      require('mini.icons').mock_nvim_web_devicons()
    end
  },
  { 'christoomey/vim-tmux-navigator', event = 'VeryLazy' },
}