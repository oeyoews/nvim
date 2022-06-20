local present, impatient = pcall(require, "impatient")

if present then
  impatient.enable_profile()
else
  vim.notify("impatient not founded")
  return
end
