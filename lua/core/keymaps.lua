vim.g.mapleader = ' '

local keymap = vim.keymap

-- normal mode
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
-- buffers
keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>')
keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>')
keymap.set('n', '<S-x>', ':bd<CR>')
