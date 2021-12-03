--[[

local ok, orgmode = pcall(require, "orgmode")

if not ok then
  return false
end

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'main',
    files = {'src/parser.c', 'src/scanner.cc'},
  },
  filetype = 'org',
}

orgmode.setup({
  org_agenda_files = {'~/.org/*'},
  org_default_notes_file = '~//.org/refile.org',
  org_indent_mode = 'noindent',
})

require("org-bullets").setup {
  symbols = { "◉", "○", "✸", "✿" }
  -- or a function that receives the defaults and returns a list
  --symbols = function(default_list)
    --table.insert(default_list, "♥")
    --return default_list
    --end
  }

-- must have org-bullets
--[[
--
vim.cmd [[
syntax match OrgHeadlineStar1 /^\*\ze\s/me=e-1 conceal cchar=◉ containedin=OrgHeadlineLevel1 contained
syntax match OrgHeadlineStar2 /^\*\{2}\ze\s/me=e-1 conceal cchar=○ containedin=OrgHeadlineLevel2 contained
syntax match OrgHeadlineStar3 /^\*\{3}\ze\s/me=e-1 conceal cchar=✸ containedin=OrgHeadlineLevel3 contained
syntax match OrgHeadlineStar4 /^\*{4}\ze\s/me=e-1 conceal cchar=✿ containedin=OrgHeadlineLevel4 contained
]]
--]]
--]]
