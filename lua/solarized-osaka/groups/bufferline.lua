local M = {}

function M.get(c, opts)
  return {
    BufferLineIndicatorSelected = { fg = c.yellow500 },
  }
end

return M
