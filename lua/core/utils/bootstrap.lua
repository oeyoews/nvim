local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

--- install packer.nvim firstly
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify([[   You have not inistall packer.nvim  Cloning packer.nvim ...]], "info")
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  -- fix firstly install packer, can't require packer
  vim.cmd([[packadd packer.nvim]])
end

local packer = require("packer")
local util = require("packer.util")
local snapshot_path = util.join_paths(fn.stdpath("config"), "snapshots")
local compile_path = util.join_paths(fn.stdpath("data"), "compile", "packer_compiled.lua")

-- init packer, and it's some settings
packer.init({
  max_jobs = 4,
  auto_clean = false,
  display = {
    prompt_border = "single",
    working_sym = "", -- The symbol for a plugin being installed/updated
    error_sym = "", -- The symbol for a plugin with an error in installation/updating
    done_sym = "",
    -- open_fn = function()
    --   return util.float({ border = "single" })
    -- end,
  },
  git = {
    clone_timeout = 6000,
    --@Mirror_packer
    -- default_url_format = 'https://github.com/%s.git',
    -- default_url_format = 'https://hub.fastgit.xyz/%s.git',
  },
  autoremove = false,
  -- tips: :lua require("packer").snapshot("default.json") or PackerSnap default.json to generate a snapshot
  -- snapshot = "default.json",
  snapshot = oeyoews.options.snapshot,
  snapshot_path = snapshot_path,
  compile_path = compile_path,
})

packer.startup(function(use)
  -- load pluginlist
  for _, plugin in pairs(oeyoews.pluginlist) do
    use(plugin)
  end

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    if packer.config.compile_path then
      -- WARN: danger command
      os.remove(packer.config.compile_path)
    end
    packer.sync()
  else
    -- automatically packer_compiled on startup
    packer.compile()
    packer.install()
  end
end)

-- keybindings
vim.cmd([[
  nnoremap <silent> <space>ps <Cmd>PackerSync<CR>
  nnoremap <silent> <space>pi <cmd>PackerInstall<cr>
  nnoremap <silent> <space>pc <cmd>PackerClean<cr>
  nnoremap <space>pr <cmd>PackerSnapshot rolling.json<cr>
]])
