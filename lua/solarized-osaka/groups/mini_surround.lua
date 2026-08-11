local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniSurround = { bg = c.orange, fg = c.base04 },
  }
end

return M
