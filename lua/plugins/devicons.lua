local web_devicons_status, web_devicons = pcall(require, 'nvim-web-devicons')
if not web_devicons_status then
    return
end

local material_icon_status, material_icon = pcall(require, 'nvim-material-icon')
if not material_icon_status then
    return
end

web_devicons.setup({
    override = material_icon.get_icons(),
})
