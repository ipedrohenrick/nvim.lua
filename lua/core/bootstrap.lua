local M = {}

function M.lazy_install()
  local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)
end

function M.mason_setup()
  local masonpath = vim.fn.stdpath('data') .. '/mason'
  if not vim.loop.fs_stat(masonpath) then
    vim.cmd('Mason')
  end
end

return M
