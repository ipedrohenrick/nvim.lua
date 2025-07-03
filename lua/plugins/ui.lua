return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'NvimTree', 'neo-tree' },
      },
    }
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
      {'<S-l>', '<cmd>BufferLineCycleNext<CR>', desc='Next Buffer'},
      {'<S-h>', '<cmd>BufferLineCyclePrev<CR>', desc='Prev Buffer'},
      {'<S-x>', '<cmd>bd<CR>', desc='Close Buffer'}
    },
    opts = {
      options = {
        show_close_icon = false,
        always_show_bufferline = false
      }
    }
  }
}