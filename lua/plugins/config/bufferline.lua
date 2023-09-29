require('bufferline').setup({
  options = {
    mode = 'buffers',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = 'PanelHeading',
        padding = 1,
      },
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        highlight = 'PanelHeading',
        padding = 1,
      },
    },
  },
})
