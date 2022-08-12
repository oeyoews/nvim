local filetype = require("filetype")

filetype.setup({
  overrides = {
    literal = {
      [".gitignore"] = "gitignore",
      ["tiddlywiki.info"] = "json",
    },
    extensions = {
      service = "systemd",
      -- norg = "norg",
      -- this plaintex fixed by vimtex
      -- tex = "tex",
    },
  },
})
