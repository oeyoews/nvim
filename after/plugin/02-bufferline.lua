local bufferline_ok, bufferline = pcall(require, "bufferline")

if not bufferline_ok then
  return false
end

bufferline.setup {
  options = {
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, _, _, _)
      return "(" .. count .. ")"
    end,
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = false,
  }
}
