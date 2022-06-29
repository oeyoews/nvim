local ok, todo_comments = pcall(require, "todo-comments")

if not ok then
  vim.notify("todo_comments not founded")
end

todo_comments.setup({})
