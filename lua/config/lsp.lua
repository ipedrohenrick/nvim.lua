local servers = {
  'ansiblels',
  'bashls',
  'cssls',
  'docker_language_server',
  'docker_compose_language_service',
  'html',
  'jsonls',
  'lua_ls',
  'pyright',
  'ts_ls',
  'vue_ls',
  'yamlls',
}

vim.lsp.enable(servers)

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true
})