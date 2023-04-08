vim.g.mapleader = ' '

local keymap = vim.keymap

-- neo-tree
keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
-- buffers
keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>')
keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>')
keymap.set('n', '<S-x>', ':bd<CR>')

-- splits
keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>sh', '<C-w>s')
keymap.set('n', '<leader>se', '<C-w>=')
keymap.set('n', '<leader>sx', ':close<CR>')
