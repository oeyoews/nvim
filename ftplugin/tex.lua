vim.opt_local.conceallevel = 2

local check_okular = function()
  if vim.fn.executable("okular") == 1 then
    vim.cmd([[VimtexCompile]])
  else
    vim.notify_once("Please install okular")
  end
end

vim.keymap.set("n", "<space>lt", function()
  return check_okular()
end, {
  buffer = true,
  silent = true,
  desc = "",
})
