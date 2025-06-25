require('nvim-treesitter.configs').setup {
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
    'query',
    'vim',
    'vimdoc',
    'gitcommit',
    'gitignore',
  },
}
