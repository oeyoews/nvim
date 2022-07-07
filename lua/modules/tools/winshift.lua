require("winshift").setup({
  highlight_moving_win = false, -- Highlight the window being moved
})

vim.cmd([[
nnoremap <space>wm <Cmd>WinShift<CR>
]])
