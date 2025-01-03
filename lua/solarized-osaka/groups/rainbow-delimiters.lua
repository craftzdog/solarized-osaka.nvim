local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    RainbowDelimiterRed    = { fg = c.red },
    RainbowDelimiterOrange = { fg = c.orange },
    RainbowDelimiterYellow = { fg = c.yellow },
    RainbowDelimiterGreen  = { fg = c.green },
    RainbowDelimiterBlue   = { fg = c.blue },
    RainbowDelimiterViolet = { fg = c.violet },
    RainbowDelimiterCyan   = { fg = c.cyan },
  }
end

return M
