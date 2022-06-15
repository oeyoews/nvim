local ok, spellsitter = pcall(require, "spellsitter")

if not ok then
  vim.notify "spellsitter not founded"
  return
end

spellsitter.setup {
  enable = true,
  -- enable = {
  --   'lua',
  --   'vim',
  --   'c',
  --   ''
  -- }
}
