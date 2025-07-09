return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'echasnovski/mini.icons',
    event = 'VeryLazy',
    opts = {
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
    }
  },
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.*',
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
      {'<leader>ff', '<cmd>Telescope find_files<CR>', 'Telescope find files'},
      {'<leader>fg', '<cmd>Telescope live_grep<CR>', 'Telescope live grep'},
      {'<leader>fb', '<cmd>Telescope buffers<CR>', 'Telescope list buffers'},
      {'<leader>fs', '<cmd>Telescope git_status<CR>', 'Telescope git status'},
    },
    opts = {
      defaults = {
        file_ignore_patterns = {
          '.git',
          '*.sqlite*',
          'venv',
          '.venv',
          '__pycache__',
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
          theme = 'dropdown'
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
          -- mini files
          { '<leader>e', desc = 'Mini files' },
          -- touble
          { '<leader>t', group = 'trouble'},
          { '<leader>tx', desc = 'Project diagnostics'},
          { '<leader>tX', desc = 'Buffer diagnostics'},
          { '<leader>td', desc = 'LSP definitions'},
        },
      }
    }
  },
  {
    'echasnovski/mini.files',
    version = 'v0.16.*',
    dependencies = 'echasnovski/mini.icons',
    keys = {
      { '<leader>e', '<cmd>lua MiniFiles.open()<CR>', 'Mini files' }
    },
    config = function ()
      require('mini.files').setup({
        content = {
          filter = function(entry)
            return entry.name ~= '.git'
          end
        }
      })
    end
  },
  {
    'echasnovski/mini.icons',
    version = 'v0.16.*',
    lazy = true,
    config = function ()
      require('mini.icons').setup()
      require('mini.icons').mock_nvim_web_devicons()
    end
  },
  { 'christoomey/vim-tmux-navigator', event = 'VeryLazy' },
}