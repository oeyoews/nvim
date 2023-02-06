local dashboard = require("dashboard")

dashboard.setup({
  theme = "hyper",
  config = {
    week_header = {
      enable = true,
    },
    disable_move = true,
    shortcut = {
      { desc = " Update", group = "@property", action = "Lazy update", key = "u" },
      { desc = "  Oeyoews", group = "@property" },
      {
        desc = " Files",
        group = "Label",
        action = "Telescope find_files",
        key = "f",
      },
    },
  },
})
