vim.fn.sign_define(
  'DiagnosticSignError',
  {text = " ", texthl = "DiagnosticSignError"}
)
vim.fn.sign_define(
  "DiagnosticSignWarn",
  {text = " ", texthl = "DiagnosticSignWarn"}
)
vim.fn.sign_define(
  'DiagnosticSignInfo',
  {text = " ", texthl = "DiagnosticSignInfo"}
)
vim.fn.sign_define(
  'DiagnosticSignHint',
  {text = " ", texthl = "DiagnosticSignHint"}
)

require('neo-tree').setup({
  default_component_configs = {
    indent = {
      with_expanders = true,
      expander_collapsed = '',
      expander_expanded = '',
    },
    icon = {
      folder_closed = '󰉋',
      folder_open = '',
      folder_empty = '',
      default = '',
    },
    name = {
      use_git_status_colors = true
    },
    git_status = {
      symbols = {
        deleted = '',
        renamed = '➜',
        untracked = '',
        unstaged = '',
        staged = '',
        ignored = '◌',
        conflict = '',
      }
    }
  },
  window = {
    width = 30
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_by_name = {
        '.git'
      }
    }
  }
})
