require("winshift").setup({
  highlight_moving_win = false, -- Highlight the window being moved
})

vim.keymap.set("n", "<space>wm", "<cmd>WinShift<cr>", { desc = "" })
