local opt = vim.opt

-- cursor
vim.cmd('set guicursor= ')

-- line numbers
opt.number = true

-- mouse
opt.mouse = 'a'

-- taps & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard
opt.clipboard:append('unnamedplus')

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append('-')

-- langs
vim.g.python3_host_prog = vim.fn.stdpath('config') .. '/.venv/bin/python'

-- disabled providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
