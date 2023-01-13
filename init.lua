require('plugins-setup')

require('config.options')
require('config.keymaps')
require('config.colorscheme')

-- plugins
require('plugins.comment')
require('plugins.nvim-tree')
require('plugins.autopairs')
require('plugins.lualine')
require('plugins.telescope')
require('plugins.nvim-cmp')
require('plugins.dashboard')

-- lsp 
require('plugins.lsp.mason')
require('plugins.lsp.lspsaga')
require('plugins.lsp.lspconfig')
