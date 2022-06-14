local ok, fidget = pcall(require, 'fidget')

if not ok then
  vim.notify('fidget not founded')
  return false
end

fidget.setup()
