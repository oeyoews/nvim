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
  desc = "",
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
  desc = "",
})

vim.keymap.set("n", "<space>lE", "<cmd>VimtexErrors<cr>", {
  buffer = true,
  silent = true,
  desc = "",
})

oeyoews.autocmd("InsertLeave", {
  pattern = "*.tex",
  group = oeyoews.mygroup,
  command = "update",
})
--[=[
-- kill will broken this last position restore
oeyoews.autocmd("VimLeave", {
  pattern = "*.tex",
  group = oeyoews.mygroup,
  -- default is silent? for this api? silent
  command = "!killall okular", -- zathura
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

vim.cmd([[
function! ZathuraHook() abort
  if exists('b:vimtex.viewer.xwin_id') && b:vimtex.viewer.xwin_id <= 0
    silent call system('xdotool windowactivate ' . b:vimtex.viewer.xwin_id . ' --sync')
    silent call system('xdotool windowraise ' . b:vimtex.viewer.xwin_id)
  endif
endfunction

augroup vimrc_vimtex
  autocmd!
  autocmd User VimtexEventView call ZathuraHook()
augroup END
]])
