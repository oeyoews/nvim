if vim.fn.executable("rg") ~= 1 then
  vim.notify("Please install ripgrep")
  return
end

local telescope = require("telescope")
local finders = require("telescope.finders")
local pickers = require("telescope.pickers")
local make_entry = require("telescope.make_entry")
local conf = require("telescope.config").values

local dotfiles_list = function(opts)
  local dir = opts.path or vim.fn.stdpath("config") .. "/lua/"
  local list = {}
  local p = io.popen("rg --files --hidden " .. dir)
  for file in p:lines() do
    table.insert(list, file)
  end
  local nvim_conf = io.popen("rg --files " .. vim.fn.stdpath("config"))
  for file in nvim_conf:lines() do
    table.insert(list, file)
  end
  return list
end

local dotfiles = function(opts)
  opts = opts or {}
  local results = dotfiles_list(opts)

  pickers.new(opts, {
    prompt_title = "find neovim config files",
    results_title = "neovim files",
    finder = finders.new_table({
      results = results,
      entry_maker = make_entry.gen_from_file(opts),
    }),
    previewer = conf.file_previewer(opts),
    sorter = conf.file_sorter(opts),
  }):find()
end

return telescope.register_extension({ exports = { dotfiles = dotfiles } })