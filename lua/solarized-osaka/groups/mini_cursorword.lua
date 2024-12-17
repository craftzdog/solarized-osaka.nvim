local M = {}

function M.get(c, opts)
  return {
    MiniCursorword = { underline = true },
    MiniCursorwordCurrent = { underline = true },
  }
end

return M
