vim.g.mapleader = ' '

local keymap = vim.keymap


keymap.set('n', '<leader>rl', ':source $MYVIMRC<CR>')
-- navigation
keymap.set('n', '<leader>q', ':q<CR>')
keymap.set('n', '<leader>w', ':w<CR>')

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

-- telescope
keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
