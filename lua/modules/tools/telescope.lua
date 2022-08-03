local telescope = require("telescope")

local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")

-- TODO: like nvchad use for to load extensions? this time
telescope.setup({
  extensions = {
    -- TODO: fix tab
    mappings = {
      -- i = {},
    },
    frecency = {
      -- db_root = "home/my_username/path/to/db_root",
      show_scores = false,
      show_unindexed = true,
      ignore_patterns = { "*.git/*", "*/tmp/*" },
      disable_devicons = false,
      workspaces = {
        -- ["conf"] = "/home/my_username/.config",
        -- ["data"] = "/home/my_username/.local/share",
        -- ["project"] = "/home/my_username/projects",
        -- ["wiki"] = "/home/my_username/wiki",
      },
    },
  },
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim", -- add this value
    },
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

vim.keymap.set("n", "<space>to", function()
  return require("telescope").load_extension("frecency"), require("telescope").extensions.frecency.frecency()
end, {
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

vim.keymap.set("n", "<space>tg", function()
  return require("telescope").load_extension("file_browser"),
    require("telescope").extensions.file_browser.file_browser()
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
