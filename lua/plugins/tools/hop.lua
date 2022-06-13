local hop_ok, hop = pcall(require, 'hop')
local map = vim.api.nvim_set_keymap

if not hop_ok then
	return false
end

hop.setup()

-- place this in one of your configuration file(s)
map(
	'n',
	'<leader>hw',
	'<cmd> lua require\'hop\'.hint_words({ hint_position = require\'hop.hint\'.HintPosition.END })<cr>',
	{}
)
map(
	'n',
	'<leader>hl',
	'<cmd> lua require\'hop\'.hint_lines({ hint_position = require\'hop.hint\'.HintPosition.END })<cr>',
	{}
)
