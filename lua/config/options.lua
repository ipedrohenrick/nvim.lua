vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.list = true
opt.listchars:append('space:⋅')
opt.guicursor = 'n:block,i:ver1,v:hor1'
opt.cursorline = true
opt.scrolloff = 5
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.backspace = 'indent,eol,start'
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append('-')
opt.clipboard:append('unnamedplus')