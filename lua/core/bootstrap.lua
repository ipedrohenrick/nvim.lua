local M = {}

M.lazy = function(install_path)
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    'https://github.com/folke/lazy.nvim.git',
    install_path
  })
  vim.opt.rtp:prepend(install_path)

  require 'plugins'
  vim.api.nvim_buf_delete(0, { force = true })
end

return M
