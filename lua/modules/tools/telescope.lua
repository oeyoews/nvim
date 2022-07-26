local telescope = require("telescope")

local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
    -- 
    prompt_prefix = " ",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    selection_caret = " ", --  
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

vim.keymap.set("n", "<space>ff", "<cmd>Telescope find_files<cr>", { desc = " find files" })
vim.keymap.set("n", "<space>to", "<cmd>Telescope oldfiles<cr>", { desc = " recent files" })
vim.keymap.set("n", "<space>tbb", "<cmd>Telescope buffers<cr>", { desc = " list all buffers" })
vim.keymap.set("n", "<C-P>", "<cmd>Telescope commands<cr>", { desc = "  command mode" })
vim.keymap.set("n", "<space>th", "<cmd>Telescope colorscheme<cr>", { desc = "  list themes" })
vim.keymap.set("n", "<space>tr", "<cmd>Telescope resume<cr>", { desc = "ﴗ restore telescope last window" })
vim.keymap.set("n", "<space>tF", "<cmd>Telescope filetypes<cr>", { desc = " set filetypes" })
vim.keymap.set("n", "<space>ts", "<cmd>Telescope live_grep<cr>", { desc = "grep" })
vim.keymap.set("n", "<space>tm", "<cmd>Telescope keymaps<cr>", { desc = "  list keymaps" })
vim.keymap.set("n", "<space>hh", "<cmd>Telescope help_tags<cr>", { desc = " list help" })

vim.keymap.set("n", "<space>tu", function()
  return require("telescope").load_extension("ultisnips"), require("telescope").extensions.ultisnips.ultisnips()
end, { desc = " load and start telescope ultisnips" })

vim.keymap.set("n", "<space>bm", function()
  require("telescope").extensions.notify.notify()
end, { desc = " () notify" })

vim.keymap.set("n", "<space>tp", function()
  require("telescope").extensions.packer.packer()
end, { desc = "  packer" })

vim.cmd([[
" highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#7CB740
highlight TelescopePromptBorder   guifg=#F7768E
highlight TelescopePromptPrefix   guifg=#F7768E gui=bold
]])
