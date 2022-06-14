local ok, beacon = pcall(require, 'beacon')

if not ok then
  return false
end

beacon.setup({
  enable = true,
  size = 40,
  fade = true,
  minimal_jump = 10,
  show_jumps = true,
  focus_gained = false,
  shrink = true,
  timeout = 800,
  ignore_buffers = {},
  ignore_filetypes = { 'startuptime' },
})

vim.cmd([[
highlight Beacon guibg=green
]])
