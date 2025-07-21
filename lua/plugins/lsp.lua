return {
  {
    'neovim/nvim-lspconfig',
    version = 'v2.*',
    dependencies = {
      'saghen/blink.cmp',
      'mason-org/mason.nvim'
    },
    event = 'VeryLazy',
    opts = {
      servers = {
        lua_ls = {},
        pyright = {},
        html = {},
        cssls = {},
        bashls = {},
      },
    },
    config = function(_, opts)
      for server, _ in pairs(opts.servers) do
        vim.lsp.enable(server)
      end
    end
  },
  {
    'saghen/blink.cmp',
    version = 'v1.*',
    dependencies = 'L3MON4D3/LuaSnip',
    lazy = true,
    opts = {
      snippets = { preset = 'luasnip' },
      completion = {
        menu = {
          auto_show = true,
          draw = {
            columns = {
              { 'label', 'label_description', gap = 1 },
              { 'kind_icon', 'kind', gap = 1 }
            }
          }
        },
        documentation = {
          auto_show = true,
        },
      },
      keymap = {
        preset = 'none',
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<C-\\>'] = { 'show' },
        ['<C-e>'] = { 'hide' },
        ['<CR>'] = { 'accept', 'fallback' },
      }
    }
  },
  {
    'mason-org/mason.nvim',
    version = 'v2.*',
    dependencies = 'mason-org/mason-lspconfig.nvim',
    keys = {
      {'<leader>m', '<cmd>Mason<CR>', 'Mason Menu'},
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'pyright',
          'bashls',
          'cssls',
          'html',
        },
      })
    end
  },
  { 'L3MON4D3/LuaSnip', version = 'v2.*', lazy = true },
  {
    'folke/trouble.nvim',
    version = 'v3.*',
    keys = {
      { '<leader>tx', '<cmd>Trouble diagnostics toggle<CR>', 'Diagnostics' },
      { '<leader>tX', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>', 'Buffer Diagnostics' },
      { '<leader>td', '<cmd>Trouble lsp_definitions toggle<CR>', 'Diagnostics' },
    },
    config = function()
      require('trouble').setup({
        focus = true,
        modes = {
          lsp_definitions = {
            win = {
              position = 'right',
              size = 80
            },
          },
        }
      })
    end
  }
}