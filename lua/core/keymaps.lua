vim.g.mapleader = ' '

local keymap = vim.keymap

-- neo-tree
keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
-- buffers
keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>')
keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>')
keymap.set('n', '<S-x>', ':bd<CR>')
