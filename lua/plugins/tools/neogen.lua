local ok, neogen = pcall(require, "neogen")

if not ok then
  vim.notify("neogen not founded")
  return
end

neogen.setup({
  enabled = true,
  languages = {
    lua = {
      template = {
        -- emmylua
        annotation_convention = "emmylua" -- for a full list of annotation_conventions, see supported-languages below,
      },
    },
  },
})

vim.cmd([[
  nnoremap <silent> <space>nf :Neogen file<cr>
]])
