local M = {}

M.lazy = function(install_path)
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    'https://github.com/folke/lazy.nvim.git',
    install_path
  })
  vim.opt.rtp:prepend(install_path)

  require 'plugins'
end

M.post_bootstrap = function()
  local api = vim.api

  api.nvim_buf_delete(0, { force = true })

  vim.schedule(function()
    vim.cmd "MasonInstallAll"

    -- Keep track of which mason pkgs get installed
    local packages = table.concat(vim.g.mason_binaries_list, " ")

    require("mason-registry"):on("package:install:success", function(pkg)
      packages = string.gsub(packages, pkg.name:gsub("%-", "%%-"), "") -- rm package name
    end)
  end)
end

return M
