local M = {}

function M.get(c, opts)
  return {
    TSNodeKey = { fg = c.magenta500, bold = true },
    TSNodeUnmatched = { fg = c.base01 },
  }
end

return M
