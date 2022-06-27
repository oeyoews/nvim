local ok, impatient = pcall(require, "impatient")

if not ok then
  vim.notify("impatient not founded")
end

impatient.enable_profile()
