-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   header.lua                                         :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <oeyoews>                          +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 12:49:11 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 12:49:12 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

local header = require("header42")

header.setup({
  user = "oeyoews",
  mail = "jyao4783@gmail.com",
  ft = {
    lua = {
      start_comment = "--",
      end_comment = "--",
      fill_comment = "-",
    },
  },
})

vim.keymap.set("n", "<space>ah", "<cmd>Stdheader<cr>", {
  silent = true,
  desc = "🩹 add header",
})
