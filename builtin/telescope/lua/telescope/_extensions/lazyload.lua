-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   lazyload.lua                                                             --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/03 15:42:35 by oeyoews                                  --
--   Updated: 2022/08/03 15:52:34 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

-- TODO: how to use actions, to fit require director conf files

local telescope = require("telescope")
local finders = require("telescope.finders")
local pickers = require("telescope.pickers")
local make_entry = require("telescope.make_entry")
local conf = require("telescope.config").values
local action_state = require("telescope.actions.state")
local action = require("telescope.actions")

local lazyload = function(opts)
  opts = opts or {}
  local results = {
    "one",
    "two",
    "third",
  }

  pickers.new(opts, {
    prompt_title = "display lazyload plugins",
    results_title = "lazyload plugins list",
    finder = finders.new_table({
      results = results,
      entry_maker = make_entry.gen_from_file(opts),
    }),
    -- previewer = conf.file_previewer(opts),
    sorter = conf.file_sorter(opts),
  }):find()
end

return telescope.register_extension({
  exports = {
    lazyload = lazyload,
  },
})

--[[ vim.keymap.set("n", "<space>tL", function()
	return require("telescope").load_extension("lazyload"), require("telescope").extensions.lazyload.lazyload()
end, {
	silent = true,
	desc = "⇘ search config files",
}) ]]
