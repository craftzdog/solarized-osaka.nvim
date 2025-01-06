local M = {}

function M.get(c)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.orange },
    AlphaHeader      = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter      = { fg = c.cyan },
    AlphaButtons     = { fg = c.cyan },
  }
end

return M
