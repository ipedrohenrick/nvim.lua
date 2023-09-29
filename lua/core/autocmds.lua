local file_opened_group = vim.api.nvim_create_augroup('FileOpenedGroup', {})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile', 'BufWinEnter' }, {
  group = file_opened_group,
  callback = function(args)
    local buftype = vim.api.nvim_get_option_value('buftype', { buf = args.buf })
    if not (vim.fn.expand('%') == '' or buftype == 'nofile') then
      vim.api.nvim_del_augroup_by_name('FileOpenedGroup')
      vim.api.nvim_exec_autocmds('User', { pattern = 'FileOpened' })
    end
  end,
})
