-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   header42.lua                                                             --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/02 15:03:13 by oeyoews                                  --
--   Updated: 2022/08/03 11:51:22 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

local header = require("header42")

header.setup({
  -- user = "oeyoews",
  mail = "jyao4783@gmail.com",
  ft = {
    lua = {
      start_comment = "---",
      end_comment = "---",
      fill_comment = "-",
    },
  },
})

vim.keymap.set("n", "<space>ah", "<cmd>Stdheader<cr>", {
  silent = true,
  desc = " add header",
})
