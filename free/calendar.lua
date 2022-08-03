vim.cmd([[
let g:calendar_cache_directory = stdpath('data') . '/calendar'
]])

vim.keymap.set("n", "<space>Tc", "<cmd>Calendar<cr>", { desc = "" })
