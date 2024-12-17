local M = {}

function M.get(c, opts)
  return {
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.magenta },
    WhichKeySeperator = { fg = c.base01 },
    WhichKeySeparator = { fg = c.base01 },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.violet500 },
  }
end

return M
