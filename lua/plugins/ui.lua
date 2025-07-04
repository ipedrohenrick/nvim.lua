return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'VeryLazy',
    opts = {
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'NvimTree', 'neo-tree' },
      },
    }
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.*',
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
      {'<leader>ff', '<cmd>Telescope find_files<CR>', 'Telescope find files'},
      {'<leader>fg', '<cmd>Telescope live_grep<CR>', 'Telescope live grep'},
      {'<leader>fb', '<cmd>Telescope buffers<CR>', 'Telescope list buffers'},
    }
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      preset = 'helix',
      spec = {
        {
          mode = { 'n' },
          { '<leader>w', desc='Write' },
          { '<leader>q', desc='Quit'},
          -- telescope
          { '<leader>f', group='find/files' },
          { '<leader>ff', desc='Telescope find files' },
          { '<leader>fg', desc='Telescope live grep' },
          { '<leader>fb', desc='Telescope list buffers' },
        },
      }
    }
  }
}