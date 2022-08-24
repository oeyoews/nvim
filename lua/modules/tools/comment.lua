require("Comment").setup()

local ft = require("Comment.ft")

-- 1. Using set function

ft.set("gitignore", "#%s")
ft.set("tid", "<!-- %s -->")
ft.set("lua", {
  "--%s",
  "--[=[%s--]=]",
})
