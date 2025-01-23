local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey   = { fg = c.magenta500, bold = true },
    HopNextKey1  = { fg = c.violet500, bold = true },
    HopNextKey2  = { fg = c.violet700 },
    HopUnmatched = { fg = c.base01 },
  }
end

return M
