-- vimtex
vim.opt_local.wrap = true
vim.opt_local.conceallevel = 2

-- optional
-- vim.cmd([[VimtexCompile]])

-- vim.cmd([[packadd vim-latex-live-preview]])
-- preview option
-- this option not support local
-- vim.opt_local.updatetime = 1000

-- add executable check for evince or okular pdf preview binary
-- vim.keymap.set("n", "<space>LT", "<cmd>LLPStartPreview<cr>", {
--   buffer = true,
--   silent = true,
--   desc = "preview tex",
-- })

vim.keymap.set("n", "<space>lt", "<cmd>VimtexCompile<cr>", {
  silent = true,
  desc = "Τ start vimtex",
})

vim.keymap.set("n", "<space>lp", "<cmd>VimtexView<cr>", {
  buffer = true,
  silent = true,
  desc = "preview pdf",
})

vim.keymap.set("n", "<space>lT", "<cmd>VimtexStop<cr>", {
  buffer = true,
  silent = true,
  desc = "stop compile",
})
-- how to clean files automatically

vim.keymap.set("n", "<space>fl", "<cmd>VimtexTocToggle<cr>", {
  buffer = true,
  silent = true,
  desc = "show vimtex toc",
})

vim.keymap.set("n", "<space>lE", "<cmd>VimtexErrors<cr>", {
  buffer = true,
  silent = true,
  desc = "show latex error",
})

oeyoews.autocmd({
  "InsertLeave",
  "CursorHoldI",
  "CursorHold",
}, {
  pattern = "*.tex",
  group = oeyoews.mygroup,
  command = "update",
  -- command = "VimtexCompile",
})

---[=[
-- kill will broken this last position restore
oeyoews.autocmd("VimLeave", {
  pattern = "*.tex",
  group = oeyoews.mygroup,
  -- default is silent? for this api? silent
  command = "!killall zathura", -- zathura
})
--]=]
-- conflict cmp tab
function ask()
  vim.schedule(function()
    local len = vim.fn.input("Preview latex? [O/ENTER] ")
    local vimtex_ans = string.lower(len) == "o"
    if vimtex_ans then
      vim.cmd([[VimtexCompile]])
    else
      -- how to execute c-l map
    end
  end)
end

vim.defer_fn(function()
  vim.cmd([[PackerLoad clipboard-image.nvim]])
end, 2000)

vim.keymap.set("n", "<space>lc", "<cmd>PasteImg<cr>", {
  buffer = true,
  silent = true,
  desc = "clipboard image",
})

-- https://boninall.com/p/86.html
-- inkscape
-- `pip install inkscape-figures`
-- run inkscape-figures watch to save files automatically
vim.cmd([[
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
]])
