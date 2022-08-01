-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                                            --
--   bootstrap.lua                                                            --
--                                                                            --
--   By: oeyoews <jyao4783@gmail.com>                                         --
--                                                                            --
--   Created: 2022/08/01 00:49:36 by oeyoews                                  --
--   Updated: 2022/08/02 00:51:14 by oeyoews                                  --
--                                                                            --
-- -------------------------------------------------------------------------- --

local install_path = string.format("%s/site/pack/packer/start/packer.nvim", vim.fn.stdpath("data"))
local snapshot_path = string.format("%s/snapshots", vim.fn.stdpath("config"))
local compile_path = string.format("%s/compile/packer_compiled.lua", vim.fn.stdpath("data"))

--- install packer.nvim firstly
if vim.fn.empty(vim.fn.glob(install_path)) == 1 then
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
  -- @note: this message can't more one line to enter automatically
  local boootstrap_msg = [[
  You have not inistall packer.nvim  Cloning packer.nvim ...]]
  vim.notify(boootstrap_msg)

  -- TODO if this exit code , how to resolve?
  packer_bootstrap = vim.fn.system({
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

-- packer config
local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
  return
end

-- init packer, and it's some settings
packer.init({
  max_jobs = 60,
  auto_clean = true,
  display = {
    prompt_border = "single",
    working_sym = " ",
    error_sym = " ",
    done_sym = " ",
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
      os.remove(packer.config.compile_path)
    end
    -- packer.sync()
    vim.cmd([[silent! PackerSync]])
  else
    -- automatically packer_compiled on startup
    packer.compile()
    packer.install()
  end
end)

--   mappings
vim.keymap.set("n", "<space>pr", function()
  return oeyoews.updateSnapshots()
end, {
  desc = " backup neovim plugin",
})

vim.keymap.set("n", "<space>fb", function()
  return oeyoews.find_lua_file("lua/modules/utils/bootstrap")
end, {
  desc = " jump bootstrap",
})

local check_version = function()
  if oeyoews.nvim_version < 8 then
    local version_msg = string.format(
      [[
 ⚠ Your neovim version is %s, please install neovim 0.8.0 or later]],
      oeyoews.nvim_full_version_info
    )
    vim.notify_once(version_msg, "warn")
  end
end

oeyoews.autocmd("FileType", {
  pattern = "packer",
  callback = function()
    check_version()
  end,
})
