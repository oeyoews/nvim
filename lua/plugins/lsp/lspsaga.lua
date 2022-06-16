local lspsaga_ok, lspsaga = pcall(require, "lspsaga")

if not lspsaga_ok then
  vim.notify("lspsaga not founded")
  return
end

lspsaga.setup({ -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  error_sign = " ",
  warn_sign = "",
  hint_sign = " ",
  infor_sign = " ",
  diagnostic_header_icon = "",
  code_action_icon = "💡",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    -- disable for code icon
    -- to prevent emoji lightbulb error
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
  -- "single" "double" "round" "plus"
  border_style = "round",
  rename_prompt_prefix = "➤ ",
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
})

vim.cmd([[
nnoremap <silent> <space>le <cmd>Lspsaga code_action<cr>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
nnoremap <silent><leader>cc <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
]])
