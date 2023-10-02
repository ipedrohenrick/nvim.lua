require('dashboard').setup({
  theme = 'hyper',
  disable_move = true,
  change_to_vcs_root = true,
  config = {
    week_header = {
      enable = true,
      concat = '我們開始工作吧，好嗎？',
    },
    shortcut = {
      {
        desc = '󰈞 Files',
        group = 'DashboardFooter',
        key = 'f',
        action = 'Telescope find_files',
      },
      {
        desc = '󰊄 Text',
        group = 'DashboardFooter',
        key = 't',
        action = 'Telescope live_grep',
      },
      {
        desc = '󰚰 Update',
        group = 'DashboardFooter',
        key = 'u',
        action = 'Lazy update',
      },
    },
    project = {
      limit = 6,
    },
    mru = {
      limit = 6,
    },
  },
  hide = {
    tabline = false,
  },
})