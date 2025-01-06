local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.magenta },
    WhichKeySeparator = { fg = c.base01 },
    WhichKeyBorder    = { fg = c.base02, bg = c.bg_float },
    WhichKeyValue     = { fg = c.violet500 },
  }
end

return M
