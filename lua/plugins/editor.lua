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
  }
}