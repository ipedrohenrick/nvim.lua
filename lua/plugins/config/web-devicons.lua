require('nvim-web-devicons').setup({
  override = {
    md = {
      icon = '',
      color = '#528bd1',
      name = 'Markdown',
    },
    sh = {
      icon = '',
      color = '#89e051',
      name = 'ShellScript',
    },
  },

  override_by_filename = {
    ['.gitconfig'] = {
      icon = '',
      color = '#e63939',
      name = 'Gitconfig',
    },
    ['.gitignore'] = {
      icon = '',
      color = '#e63939',
      name = 'Gitignore',
    },
    ['.gitmodules'] = {
      icon = '',
      color = '#e63939',
      name = 'Gitmodules',
    },
    ['commit_editmsg'] = {
      icon = '',
      color = '#e63939',
      name = 'GitCommit',
    },
    ['.env.example'] = {
      icon = '',
      color = '#faf743',
      name = 'Env',
    },
  },
})
