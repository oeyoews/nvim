local todo_comments_ok, todo_comments = pcall(require, 'todo-comments')

if not todo_comments_ok then
  return false
end

todo_comments.setup()
