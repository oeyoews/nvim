if oeyoews.options.enable_session then
  require('persistence').setup()
else
  return
end

vim.keymap.set('n', '<space>ql', function()
  require('persistence').load({
    last = true,
  })
end, {
  desc = ' restore last session',
})
