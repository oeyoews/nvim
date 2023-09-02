require('Comment').setup()

local ft = require('Comment.ft')

-- 1. Using set function

ft.set('json5', '//%s')
ft.set('gitignore', '#%s')
ft.set('tiddlywiki', '<!-- %s -->')
ft.set('lua', {
  '--%s',
  '--[=[%s--]=]',
})
