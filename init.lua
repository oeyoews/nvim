-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: oeyoews <jyao4783@gmail.com>               +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2022/07/31 13:04:04 by oeyoews           #+#    #+#             --
--   Updated: 2022/07/31 13:40:54 by oeyoews          ###   ########          --
--                                                                            --
-- -------------------------------------------------------------------------- --

--   Main
local Config = require("user.modules")
local pcall = require("user.pcall")
local files = Config.files
local modules = Config.modules

-- ﱤ load modules
pcall.setup("modules", modules, files)
