local theme_status, theme = pcall(require, 'catppuccin')
if not theme_status then
    print('Colorsheme not found!')
    return
end

theme.setup({
    flavour = 'mocha',
})

vim.cmd('colorscheme catppuccin')
