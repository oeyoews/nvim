local telescope = require("telescope")

local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
    -- #   ➤   🔍
    prompt_prefix = " ",
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

vim.keymap.set(
  "n",
  "<space>tu",
  function()
    return require("telescope").load_extension("ultisnips"), require("telescope").extensions.ultisnips.ultisnips()
  end, --[[ "<cmd>Telescope ultisnips<cr>", ]]
  { desc = "load and start telescope ultisnips" }
)

vim.keymap.set("n", "<space>bm", function()
  require("telescope").extensions.notify.notify()
end, { desc = "T ==> notify" })

vim.keymap.set("n", "<space>tp", function()
  require("telescope").extensions.packer.packer()
end, { desc = "T ==> packer" })

vim.keymap.set("n", "<space>ff", "<cmd>Telescope find_files<cr>", { desc = "find files" })
vim.keymap.set("n", "<space>to", "<cmd>Telescope oldfiles<cr>", { desc = "recent files" })
vim.keymap.set("n", "<space>tbb", "<cmd>Telescope buffers<cr>", { desc = "" })
vim.keymap.set("n", "<C-P>", "<cmd>Telescope commands<cr>", { desc = "" })

vim.cmd([[
nnoremap <leader>th <Cmd>Telescope colorscheme <Cr>
nnoremap <leader>tF <Cmd>Telescope filetypes<Cr>
nnoremap <leader>tg <Cmd>Telescope git_status<Cr>
nnoremap <leader>tr <Cmd>Telescope resume<Cr>

" search string in current dir
nnoremap <leader>ts <Cmd>Telescope live_grep<Cr>

nnoremap <leader>tm <cmd>Telescope keymaps<cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#bd93f9
" highlight TelescopeResultsBorder  guifg=#bd93f9
highlight TelescopePreviewBorder  guifg=#7CB740
highlight TelescopePromptBorder   guifg=#F7768E
highlight TelescopePromptPrefix   guifg=#F7768E gui=bold

]])
