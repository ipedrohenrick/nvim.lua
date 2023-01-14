local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not status then
    return
end

treesitter.setup({
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
    ensure_installed = {
        'python',
        'vue',
        'html',
        'bash',
        'javascript',
        'json',
        'lua',
        'dockerfile',
        'yaml',
    },
    auto_install = true,
})
