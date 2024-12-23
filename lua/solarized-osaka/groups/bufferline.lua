local M = {}

function M.get(c, opts)
  --stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.yellow500 },
  }
end

return M
