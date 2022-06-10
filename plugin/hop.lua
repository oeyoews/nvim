local hop_ok, hop = pcall(require, "hop")

if not hop_ok then
  return false
end

hop.setup()

-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', '<leader>hw', "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>hl', "<cmd> lua require'hop'.hint_lines({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
