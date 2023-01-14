local dashboard_status, dashboard = pcall(require, 'dashboard')
if not dashboard_status then
    return
end

dashboard.preview_command = 'lolcat -F 0.2'
dashboard.preview_file_path = vim.fn.stdpath('config') .. '/assets/logo.cat'
dashboard.preview_file_height = 17
dashboard.preview_file_width = 34

dashboard.custom_center = {
    {
        icon = ' ',
        desc = 'New file            ',
        action = 'DashboardNewFile',
        shortcut = 'SPC a f',
    },
    {
        icon = ' ',
        desc = 'File Explorer         ',
        action = 'NvimTreeToggle',
        shortcut = 'SPC e'
    },
    {
        icon = ' ',
        desc = 'File Browser        ',
        action = 'Telescope find_files',
        shortcut = 'SPC f f'
    },
    {
        icon = ' ',
        desc = 'Find word           ',
        action = 'Telescope live_grep',
        shortcut = 'SPC f s'
    },
    {
        icon = ' ',
        desc = 'Quit                       ',
        action = 'q',
        shortcut = '',
    }
}

dashboard.custom_footer = {
    '',
    'Trabalhar né meu patrão',
}
