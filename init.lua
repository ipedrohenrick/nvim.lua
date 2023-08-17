local lazypath = vim.fn.stdpath('data') .. 'lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  require('core.bootstrap').lazy(lazypath)
  require('core.bootstrap').post_bootstrap()
end

vim.opt.rtp:prepend(lazypath)
require 'core'
require 'plugins'
