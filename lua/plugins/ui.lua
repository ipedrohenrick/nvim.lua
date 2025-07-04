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
    tag = '0.1.8',
    dependencies = 'nvim-lua/plenary.nvim',
    keys = {
      {'<leader>ff', '<cmd>Telescope find_files<CR>', 'Telescope find files'},
      {'<leader>fg', '<cmd>Telescope live_grep<CR>', 'Telescope live grep'},
      {'<leader>fb', '<cmd>Telescope buffers<CR>', 'Telescope list buffers'},
    }
  }
}