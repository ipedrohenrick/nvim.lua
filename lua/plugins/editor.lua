return {
  {
    'nvim-treesitter/nvim-treesitter',
    version = 'v0.10.*',
    dependencies = 'HiPhish/rainbow-delimiters.nvim',
    lazy = false,
    build = ':TSUpdate',
    config = function ()
      require('nvim-treesitter.configs').setup({
        auto_install = true,
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
        highlight = { enable = true },
      })
    end
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = 'VeryLazy',
    config = function ()
      require('ibl').setup({ scope = { enabled = false }})
    end
  },
  {
    'numToStr/Comment.nvim',
    version = 'v0.8.*',
    event = 'VeryLazy'
  },
  {
    'echasnovski/mini.pairs',
    version = 'v0.16.*',
    event = 'VeryLazy',
    config = function ()
      require('mini.pairs').setup()
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    version = 'v1.*',
    event = 'VeryLazy',
    config = function()
      require('gitsigns').setup()
    end
  },
  {
    'MagicDuck/grug-far.nvim',
    version = 'v1.*',
    keys = {
      { '<leader>r', '<cmd>GrugFar<CR>', 'GrugFar' }
    }
  }
}