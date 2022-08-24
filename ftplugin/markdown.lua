vim.cmd("packadd vim-table-mode")
vim.cmd("packadd clipboard-image.nvim")
-- this will cause multi times tos open every md files, because it's not a lua plugin
vim.cmd([[
packadd markdown-preview.nvim
  ]])
-- because this is a function, even no require again, but this buffer keymap is still work
oeyoews.lazyload.mkdp()

-- vim.cmd([[MarkdownPreview]])

--- markdown checkbox
-- TODO: add word boundary
local checked_character = "x"

local checked_checkbox = "- %[" .. checked_character .. "%] "
local unchecked_checkbox = "- %[ %] "

local line_contains_an_unchecked_checkbox = function(line)
  return string.find(line, unchecked_checkbox)
end

local checkbox = {
  check = function(line)
    return line:gsub(unchecked_checkbox, checked_checkbox)
  end,

  uncheck = function(line)
    return line:gsub(checked_checkbox, unchecked_checkbox)
  end,
}

local toggle = function()
  local bufnr = vim.api.nvim_buf_get_number(0)
  local cursor = vim.api.nvim_win_get_cursor(0)
  local start_line = cursor[1] - 1
  local current_line = vim.api.nvim_buf_get_lines(bufnr, start_line, start_line + 1, false)[1] or ""

  -- If the line contains a checked checkbox then uncheck it.
  -- Otherwise, if it contains an unchecked checkbox, check it.
  local new_line = ""
  if line_contains_an_unchecked_checkbox(current_line) then
    new_line = checkbox.check(current_line)
  else
    new_line = checkbox.uncheck(current_line)
  end

  vim.api.nvim_buf_set_lines(bufnr, start_line, start_line + 1, false, { new_line })
  vim.api.nvim_win_set_cursor(0, cursor)
end

vim.keymap.set("n", "<space><space>", function()
  toggle()
end, {
  buffer = true,
  silent = true,
  desc = " toggle markdown checkbox",
})

--- bullet
--[=[ local citation_regex = vim.regex([[^\s*\(> \)\+]])

local auto_list = function()
  local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
  local preceding_line = vim.api.nvim_buf_get_lines(0, row - 2, row - 1, true)

  if #preceding_line ~= 1 then
    return
  end

  -- NOTE: - is a special character in lua string matching so it needs to be escaped
  if preceding_line[1]:match("^%s*%-%s+.+") then
    -- continue "-" list
    local whitespace = preceding_line[1]:match("^(%s*)%-%s+.+")
    vim.api.nvim_set_current_line(whitespace .. "- ")
  elseif preceding_line[1]:match("^%s-%-%s$") then
    -- end "-" list
    local whitespace = preceding_line[1]:match("^(%s*)%-.*")

    vim.api.nvim_buf_set_lines(0, row - 2, row, true, { whitespace .. "  " })
    vim.api.nvim_win_set_cursor(0, { row - 1, 0 })
  end

  -- Citation markers like:
  -- > some text
  -- > > aaa

  local citation_start, citation_end = citation_regex:match_str(preceding_line[1])

  if citation_start and citation_end then
    local citation_markers = preceding_line[1]:sub(citation_start, citation_end)
    local after_citation = preceding_line[1]:sub(citation_end, -1)

    if not after_citation:match("^%s*$") then
      -- continue citaion
      vim.api.nvim_set_current_line(citation_markers)
    else
      -- if the citation is empty, decrease its level by one
      local pre_preceeding_line = vim.api.nvim_buf_get_lines(0, row - 3, row - 2, true)

      pre_preceeding_line = pre_preceeding_line[1] or ""

      local _, preceeding_citation_end = citation_regex:match_str(pre_preceeding_line)

      if preceeding_citation_end and pre_preceeding_line:sub(preceeding_citation_end, -1):match("^%s*$") then
        -- prev cition was also empty, delete one level + one line
        citation_markers = citation_markers:sub(1, -3)

        vim.api.nvim_buf_set_lines(0, row - 3, row, true, { citation_markers })
        vim.api.nvim_win_set_cursor(0, { row - 2, 0 })
      else
        -- continue citation
        vim.api.nvim_set_current_line(citation_markers)
      end
    end
  end
end

vim.keymap.set("i", "<CR>", function()
  -- *e*scape
  local e = vim.api.nvim_replace_termcodes

  vim.api.nvim_feedkeys(e("i<CR>", true, true, true), "nx", false)

  auto_list()

  vim.api.nvim_feedkeys(e("<ESC>A", true, true, true), "n", true)
end) --]=]
