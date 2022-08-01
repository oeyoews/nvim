vim.g.startuptime_event_width = 30
-- vim.g.startuptime_zero_progress_msg = 0 -- not work

vim.keymap.set("n", "<space>vt", "<cmd>StartupTime<cr>", {
  desc = " show StartupTime",
})
