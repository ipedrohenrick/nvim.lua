require('core.bootstrap').lazy_install()

require('core.keymaps')
require('core.configs')
require('core.autocmds')

require('plugins')

require('core.bootstrap').mason_setup()
