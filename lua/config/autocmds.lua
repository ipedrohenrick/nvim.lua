vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    local argc = vim.fn.argc()
    local arg = vim.fn.argv(0)
    local open_minifiles = false
    if argc == 0 or (argc == 1 and vim.fn.isdirectory(arg) == 1) then
      open_minifiles = true
    end

    for _, win in ipairs(vim.api.nvim_list_wins()) do
      local config = vim.api.nvim_win_get_config(win)
      if config.relative ~= '' then
        open_minifiles = false
        break
      end
    end

    if open_minifiles then
      require('mini.files').open()
    end
  end
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopeFindPre',
  callback = function()
    require('mini.files').close()
  end
})