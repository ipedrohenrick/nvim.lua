require('dashboard').setup {
  theme = 'hyper',
  disable_move = true,
  shortcut_type = 'number',
  shuffle_letter = false,
  change_to_vcs_root = true,
  config = {
    week_header = {
      enable = true,
      concat = '我們開始工作吧，好嗎？',
    },
    disable_move = true,
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
      limit = 4,
    },
    mru = {
      limit = 4,
    },
  },
  hide = {
    tabline = false,
  },
}
