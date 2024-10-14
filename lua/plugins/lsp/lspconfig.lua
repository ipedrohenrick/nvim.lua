local lspconfig = require('lspconfig')
local util = require('lspconfig.util')

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

lspconfig['bashls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['clangd'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['cssls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['html'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
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

lspconfig['pyright'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['ts_ls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

local function get_typescript_server_path(root_dir)
  local masonpath = vim.fn.stdpath('data') .. '/mason'
  local global_ts = masonpath
    .. '/packages/typescript-language-server/node_modules/typescript/lib'
  -- Alternative location if installed as root:
  -- local global_ts = '/usr/local/lib/node_modules/typescript/lib'
  local found_ts = ''
  local function check_dir(path)
    found_ts = util.path.join(path, 'node_modules', 'typescript', 'lib')
    if util.path.exists(found_ts) then
      return path
    end
  end
  if util.search_ancestors(root_dir, check_dir) then
    return found_ts
  else
    return global_ts
  end
end

lspconfig['volar'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  on_new_config = function(new_config, new_root_dir)
    new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
  end,
})
