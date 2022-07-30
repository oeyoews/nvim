local lspsaga = require("lspsaga")

--  
lspsaga.setup({
  debug = false,
  use_saga_diagnostic_sign = true,
  error_sign = "", --     
  warn_sign = "", --      ﳗ 
  hint_sign = "", --  﫢 ﴞ➤
  infor_sign = " ", -- NOTE: can't have space    
  diagnostic_header_icon = " ", -- 
  rename_prompt_prefix = " ",
  code_action_icon = "ﴞ ",
  code_action_prompt = {
    enable = false, -- this refresh is very slow
    sign = true,
    sign_priority = 20,
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
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
})

vim.keymap.set("n", "<space>le", "<cmd>Lspsaga code_action<cr>", {
  desc = " intelligent code tip",
})
vim.keymap.set("n", "<space>gk", "<cmd>Lspsaga hover_doc<cr>", {
  desc = " hover lsp doc",
})
vim.keymap.set("n", "<space>gh", "<cmd>Lspsaga lsp_finder<cr>", {
  desc = "lsp finder",
})
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<cr>", {
  desc = "✏ lsp rename",
})
vim.keymap.set("n", "<space>gd", "<cmd>Lspsaga preview_definition<cr>", {
  desc = " preview_definition",
})
vim.keymap.set("n", "<space>gs", "<cmd>Lspsaga signature_help<cr>", {
  desc = " signature_help",
})
