local ok, fidget = pcall(require, "fidget")

if not ok then
  vim.notify('fidget not founded')
end

fidget.setup({
  text = {
    spinner = "moon",
  },
  align = {
    bottom = true,
  },
  window = {
    relative = "editor",
  },

})
