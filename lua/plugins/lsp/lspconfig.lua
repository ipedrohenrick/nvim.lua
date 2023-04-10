local lspconfig = require('lspconfig')

local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set keybinds
  vim.keymap.set('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opts)
  vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)
  vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename ++project<CR>', opts)
  vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
  vim.keymap.set('n', '<leader>d', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
  vim.keymap.set('n', '<leader>d', '<cmd>Lspsaga show_cursor_diagnostics<CR>', opts)
  vim.keymap.set('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
  vim.keymap.set('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig['html'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig['cssls'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig['lua_ls'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.stdpath('config') .. 'lua'] = true,
                },
            },
        },
    },
})
