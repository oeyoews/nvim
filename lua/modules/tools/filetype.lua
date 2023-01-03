local filetype = require("filetype")

filetype.setup({
  overrides = {
    literal = {
      [".gitignore"] = "gitignore",
    },
    extensions = {
      service = "systemd",
      tid = "tiddlywiki", -- bug
      info = "json",
      -- norg = "norg",
      -- this plaintex fixed by vimtex
      -- tex = "tex",
    },
  },
})
