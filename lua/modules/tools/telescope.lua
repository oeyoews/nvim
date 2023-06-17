local telescope = require("telescope")
local actions = require("telescope.actions")
local extensions = require("telescope").extensions

telescope.setup({
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
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
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
    },
  },
})

vim.keymap.set("n", "<space>ff", "<cmd>Telescope find_files<cr>", {
  desc = "﯒ find files",
})

vim.keymap.set("n", "<space>tf", "<cmd>Telescope filetypes<cr>", {
  desc = "𝑭 set filetypes",
})

vim.keymap.set("n", "<space>gd", "<cmd>Telescope lsp_definitions<cr>", {
  desc = "𝑭 goto lsp_definitions",
})

vim.keymap.set("n", "<space>gr", "<cmd>Telescope lsp_references<cr>", {
  desc = "𝑭 goto reference",
})

vim.cmd([[
" highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopeBorder         guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#7CB740
highlight TelescopePromptBorder   guifg=#F7768E
highlight TelescopePromptPrefix   guifg=#F7768E gui=bold
]])

-- just load extension, not load these to telescope
vim.keymap.set("n", "<space>to", "<cmd>Telescope oldfiles<cr>", {
  desc = " recent files",
})

vim.keymap.set("n", "<space>tb", "<cmd>Telescope buffers<cr>", {
  desc = "﬘ buffers",
})

-- snippets
vim.keymap.set("n", "<space>tu", function()
  return extensions.ultisnips.ultisnips()
end, {
  desc = " load and start telescope ultisnips",
})

vim.keymap.set("n", "<space>tv", function()
  return extensions.dotfiles.dotfiles()
end, {
  silent = true,
  desc = "⇘ search config files",
})
