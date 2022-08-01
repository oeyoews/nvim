vim.g.startuptime_event_width = 30
-- vim.g.startuptime_zero_progress_msg = 0 -- not work

vim.keymap.set("n", "<space>vt", "<cmd>StartupTime<cr>", {
  desc = "⌚show StartupTime",
})

vim.keymap.set("n", "<space>vT", "<cmd>StartupTime --tries 3<cr>", {
  desc = "⌚show StartupTime",
})
