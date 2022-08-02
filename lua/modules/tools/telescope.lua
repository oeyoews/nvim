local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
    prompt_prefix = " ",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    selection_caret = " ", --  
    entry_prefix = "  ",
    multi_icon = " ",
    color_devicons = true,
    use_less = true,
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.35,
        results_width = 0.80,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
  },
})

vim.keymap.set("n", "<space>ff", "<cmd>Telescope fd<cr>", {
  desc = "﯒ find files",
})
vim.keymap.set("n", "<space>to", "<cmd>Telescope oldfiles<cr>", {
  desc = " recent files",
})
vim.keymap.set("n", "<space>tf", "<cmd>Telescope filetypes<cr>", {
  desc = "𝑭 set filetypes",
})

vim.keymap.set("n", "<space>tu", function()
  return require("telescope").load_extension("ultisnips"), require("telescope").extensions.ultisnips.ultisnips()
end, {
  desc = " load and start telescope ultisnips",
})

vim.keymap.set("n", "<space>tp", function()
  return require("telescope").extensions.packer.packer()
end, {
  desc = "  packer",
})

vim.keymap.set("n", "<space>tv", function()
  return require("telescope").load_extension("dotfiles"), require("telescope").extensions.dotfiles.dotfiles()
end, {
  silent = true,
  desc = "⇘ search config files",
})

vim.cmd([[
" highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#7CB740
highlight TelescopePromptBorder   guifg=#F7768E
highlight TelescopePromptPrefix   guifg=#F7768E gui=bold
]])
