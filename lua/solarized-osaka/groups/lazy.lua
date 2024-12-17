local M = {}

function M.get(c, opts)
  return {
    LazyProgressDone = { bold = true, fg = c.magenta500 },
    LazyProgressTodo = { bold = true, fg = c.base01 },
  }
end

return M
