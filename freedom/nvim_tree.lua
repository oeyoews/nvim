require("nvim-tree").setup()

vim.keymap.set("n", "<space>fn", "<cmd>NvimTreeFindFileToggle<cr>", {
  desc = "  Nvim Tree",
})

oeyoews.autocmd({ "BufEnter" }, {
  group = oeyoews.mygroup,
  pattern = "*",
  callback = function()
    if vim.bo.filetype == "NvimTree" then
      local val = "%#WinbarNvimTreeIcon#   %*"
      local path = vim.fn.getcwd()
      local home = os.getenv("HOME")
      path = path:gsub(home, "~")
      val = val .. "%#WinbarPath#" .. path .. "%*"
      vim.api.nvim_set_hl(0, "WinbarNvimTreeIcon", { fg = "#98be65" })
      vim.api.nvim_set_hl(0, "WinbarPath", { fg = "#BB9AF6" })
      vim.api.nvim_win_set_option(0, "winbar", val)
    end
  end,
})
