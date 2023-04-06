local lazy_status, lazy = pcall(require, 'lazy')
if lazy_status then
  lazy.setup({
    {
      'glepnir/dashboard-nvim',
      event='VimEnter',
      opts=function()
        return require 'plugins.config.dashboard'
      end,
      config=function(_, opts)
        require('dashboard').setup(opts)
      end
    }
  })
end
