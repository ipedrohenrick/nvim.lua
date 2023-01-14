require('plugins-setup')

require('config.options')
require('config.keymaps')

-- plugins
require('plugins.theme')
require('plugins.devicons')
require('plugins.comment')
require('plugins.nvim-tree')
require('plugins.lualine')
require('plugins.telescope')
require('plugins.nvim-cmp')
require('plugins.dashboard')
require('plugins.gitsigns')
require('plugins.bufferline')

-- lsp 
require('plugins.lsp.mason')
require('plugins.lsp.lspsaga')
require('plugins.lsp.lspconfig')

-- highlighting and autoclosing
require('plugins.treesitter')
require('plugins.autopairs')
