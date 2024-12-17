local M = {}

function M.get(c, opts)
  return {
    MiniSurround = { bg = c.orange, fg = c.black },
  }
end

return M
