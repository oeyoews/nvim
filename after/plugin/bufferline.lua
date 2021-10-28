if not pcall(require, "bufferline") then
  return
end

require('bufferline').setup {
  options = {
    numbers = "none",
    right_mouse_command = "buffer %d",
    separator_style = "slant",
  }
}
