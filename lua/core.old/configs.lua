vim.opt.confirm = true
vim.opt.swapfile = false
vim.opt.backup = false

-- cursor
vim.cmd 'set guicursor=n:block,i:ver1,v:hor1'
vim.opt.cursorline = true
vim.opt.scrolloff = 10

-- numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- mouse
vim.opt.mouse = 'a'

-- taps & indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wrap = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.signcolumn = 'yes'

-- backspace
vim.opt.backspace = 'indent,eol,start'

-- clipboard
vim.opt.clipboard:append 'unnamedplus'

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.iskeyword:append '-'

vim.g.python3_host_prog = '/bin/python3'

-- disabled providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
