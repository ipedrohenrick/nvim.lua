local header = {
	[[                                                     ]],
	[[                                                     ]],
	[[                                                     ]],
	[[  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ]],
	[[  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ]],
	[[ ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ]],
	[[ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ]],
	[[ ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ]],
	[[ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ]],
	[[ ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ]],
	[[    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ]],
	[[          ░    ░  ░    ░ ░        ░   ░         ░    ]],
	[[                                 ░                   ]],
	[[                                                     ]],
	[[                                                     ]],
	[[                                                     ]],
	[[                                                     ]],
}

local options = {
  theme = 'doom',
  config = {
    header = header,
    center = {
      {
        icon = '󰈔 ',
        icon_hl = 'Title',
        desc = 'New File',
        desc_hl = 'String',
        key = 'n',
        key_hl = 'Number',
        action = 'enew'
      },
      {
        icon = '󰈞 ',
        icon_hl = 'Title',
        desc = 'Find File',
        desc_hl = 'String',
        key = 'f',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = '󰊄 ',
        icon_hl = 'Title',
        desc = 'Find Text',
        desc_hl = 'String',
        key = 't',
        key_hl = 'Number',
        action = 'Telescope live_grep'
      },
      {
        icon = '󱑀 ',
        icon_hl = 'Title',
        desc = 'Recent Files',
        desc_hl = 'String',
        key = 'r',
        key_hl = 'Number',
        action = 'Telescope oldfiles'
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Edit configs',
        desc_hl = 'String',
        key = 'e',
        key_hl = 'Number',
        action = 'edit' .. vim.fn.stdpath('config'),
      },
      {
        icon = '󰅙 ',
        icon_hl = 'Title',
        desc = 'quit',
        desc_hl = 'String',
        key = 'q',
        key_hl = 'Number',
        action = ':q',
      },
    },
  },
}

return options
