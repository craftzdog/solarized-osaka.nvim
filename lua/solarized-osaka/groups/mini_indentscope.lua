local M = {}

function M.get(c, opts)
  return {
    MiniIndentscopeSymbol = { fg = c.violet700, nocombine = true },
    MiniIndentscopeSymbolOff = { fg = c.warning, nocombine = true },
  }
end

return M
