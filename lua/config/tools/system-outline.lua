local ok, symbolsoutline = pcall(require, 'symbols-outline')

if not ok then
	return false
end

symbolsoutline.setup({
	auto_preview = false,
})

vim.cmd([[
nnoremap <silent> <SPACE>ls <Cmd>SymbolsOutline<CR><C-w>w
]])
