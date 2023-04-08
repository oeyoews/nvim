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
      files = "json",
      -- mdx = "markdown",
      -- norg = "norg",
      -- this plaintex fixed by vimtex
      -- tex = "tex",
    },
  },
})
