local present, impatient = pcall(require, 'impatient')

if present then
    impatient.enable_profile()
    -- vim.notify("impatient  founded")
else
    vim.notify('impatient not founded')
    return
end
