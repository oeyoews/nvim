local ok, impatient = pcall(require, "impatient")

local filetype = require("filetype")

filetype.setup({
  overrides = {
    complex = {
      [".service"] = "systemd",
    },
  },
})
