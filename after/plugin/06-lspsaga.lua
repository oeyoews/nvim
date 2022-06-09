local lspsaga_ok, lspsaga = pcall(require, "lspsaga")

if not lspsaga_ok then
  return false
end

lspsaga.setup { -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  --error_sign = "",
  --error_sign = "🌹",
  error_sign = "",
  warn_sign = "🍺",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "",
  --code_action_icon = "👷",
  code_action_icon = "💡",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    -- disable for code icon
    virtual_text = false,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
}

vim.cmd [[
nnoremap <silent> <space>lr <cmd>Lspsaga rename<cr>
nnoremap <silent> <space>le <cmd>Lspsaga code_action<cr>
]]
