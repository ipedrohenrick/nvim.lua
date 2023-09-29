local rainbow = require('ts-rainbow')

require('nvim-treesitter.configs').setup({
  rainbow = {
    enable = true,
    query = 'rainbow-parens',
    strategy = rainbow.strategy.global,
  },
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  ensure_installed = {
    'python',
    'vue',
    'html',
    'bash',
    'javascript',
    'json',
    'lua',
    'dockerfile',
    'yaml',
    'markdown',
    'markdown_inline',
  },
})
