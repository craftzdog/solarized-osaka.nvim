local M = {}

function M.get(c, opts)
  --stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.yellow500 },
    TabLineFill                 = { nocombine = true }
  }
end

return M
