local filetype = require("filetype")

filetype.setup({
  overrides = {
    complex = {
      [".service"] = "systemd",
    },
  },
})
