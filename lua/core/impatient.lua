local ok, impatient = pcall(require, "impatient")

if not ok then
  vim.notify("   impatient not founded")
  return
end

impatient.enable_profile()
