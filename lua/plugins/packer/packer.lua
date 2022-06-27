local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local plugins = require("plugins/packer/plugins")

-- @PackerSettings
-- autoomatically install packer
if fn.empty(fn.glob(install_path)) > 0 then
  print("   Cloning packer   Waiting  ")
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  vim.cmd("packadd packer.nvim")
  print("   Finish install packer")
end

local packer = require("packer")

local util = require("packer.util")

packer.init({
  max_jobs = 4,
  config = {
    profile = {
      enable = false,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
  display = {
    working_sym = "", -- The symbol for a plugin being installed/updated
    error_sym = "", -- The symbol for a plugin with an error in installation/updating
    done_sym = "",
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
  },
  git = {
    clone_timeout = 6000,
    --@Mirror_packer
    -- default_url_format = 'https://github.com/%s.git',
    -- default_url_format = 'https://hub.fastgit.xyz/%s.git',
  },
  autoremove = false,
  compile_path = util.join_paths(fn.stdpath("data"), "compile", "packer_compiled.lua"),
})

packer.startup(function(use)
  for _, plugin in pairs(plugins) do
    use(plugin)
  end

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    if packer.config.compile_path then
      os.remove(packer.config.compile_path)
    end
    packer.sync()
  end

  -- automatically install missing plugin(s) on startup
  packer.install()

  -- automatically packer_compiled on startup
  packer.compile()
end)

vim.cmd([[
  nnoremap <Leader>vs <Cmd>PackerSync<CR>
  nnoremap <silent> <leader>so <cmd>so % <bar> lua vim.notify("reload current file")<cr>
]])
