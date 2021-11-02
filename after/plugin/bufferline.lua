local ok, bufferline = pcall(require, "bufferline")

if not ok then
  return false
end

bufferline.setup {
  options = {
    numbers = "none",
    right_mouse_command = "buffer %d",
    separator_style = "thin",
  }
}
