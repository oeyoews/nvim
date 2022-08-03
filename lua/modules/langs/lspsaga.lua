local lspsaga = require("lspsaga")

-- make it generalize in settings
lspsaga.setup = lspsaga.init_lsp_saga

lspsaga.setup({
  saga_winblend = 0,
  move_in_saga = { prev = "<C-p>", next = "<C-n>" },
  show_diagnostic_source = true,
  diagnostic_source_bracket = {},
  -- winbar have many bugs
  symbol_in_winbar = {
    enable = false,
    separator = " ⇒ ",
    show_file = true,
    click_support = false, -- bug
  },
  show_outline = {
    win_position = "right",
    win_with = "",
    win_width = 30,
    auto_enter = true,
    auto_preview = true,
    virt_text = "┃",
    jump_key = "o",
    -- auto refresh when change buffer
    auto_refresh = true,
  },
  code_action_num_shortcut = true,
  -- code_action_icon = "💡",
  -- diagnostic_header = { " ", " ", " ", "ﴞ " }, -- this not work, maybe order, but another is normal
  code_action_lightbulb = {
    enable = false,
    sign = true,
    sign_priority = 20,
    virtual_text = true,
  },
  max_preview_lines = 20,
  finder_icons = {
    def = " ",
    ref = "諭",
    link = " ",
  },
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
  rename_action_quit = "q",
  definition_preview_icon = "  ",
  border_style = "bold",
})

vim.keymap.set("n", "<space>le", "<cmd>Lspsaga code_action<cr>", {
  desc = " intelligent code tip",
})
vim.keymap.set("n", "<space>gk", "<cmd>Lspsaga hover_doc<cr>", {
  desc = " hover lsp doc",
})
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<cr>", {
  desc = "✏ lsp rename",
})
vim.keymap.set("n", "<space>gs", "<cmd>Lspsaga signature_help<cr>", {
  desc = " signature_help",
})
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", {
  silent = true,
  noremap = true,
})
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", {
  silent = true,
  noremap = true,
})
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", {
  silent = true,
  noremap = true,
})
