local dashboard_status, dashboard = pcall(require, 'dashboard')
if not dashboard_status then
    return
end

dashboard.custom_center = {
  {icon_hl={fg="color_code"},icon ="some icon",desc="some desc"},
  { icon = 'some icon',desc = 'some description here' },
  { desc = 'some description here' },
  { desc = 'some description here', action = 'Telescope find files'}
}
