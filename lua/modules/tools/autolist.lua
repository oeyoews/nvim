local autolist = require('autolist')
local hook = autolist.create_mapping_hook
autolist.setup()
hook('i', '<CR>', autolist.new)
hook('i', '<Tab>', autolist.indent)
hook('i', '<S-Tab>', autolist.indent, '<C-D>')
hook('n', 'o', autolist.new)
hook('n', 'O', autolist.new_before)
hook('n', '>>', autolist.indent)
hook('n', '<<', autolist.indent)
hook('n', '<C-r>', autolist.force_recalculate)
hook('n', '<leader><leader>', autolist.invert_entry, '')
vim.api.nvim_create_autocmd('TextChanged', {
  pattern = '*',
  callback = function()
    vim.cmd.normal({ autolist.force_recalculate(nil, nil), bang = false })
  end,
})
