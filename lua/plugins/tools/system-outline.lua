-- @FileName: system-outline.lua
-- @Description: code outline
-- @Status: false

local ok, symbolsoutline = pcall(require, "symbols-outline")

if not ok then
  return
end

symbolsoutline.setup({
  auto_preview = false,
})

vim.cmd([[
nnoremap <silent> <SPACE>ls <Cmd>SymbolsOutline<CR><C-w>w
]])
