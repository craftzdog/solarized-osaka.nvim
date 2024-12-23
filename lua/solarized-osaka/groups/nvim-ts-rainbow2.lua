local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    TSRainbowRed    = { fg = c.red },
    TSRainbowOrange = { fg = c.orange },
    TSRainbowYellow = { fg = c.yellow },
    TSRainbowGreen  = { fg = c.green },
    TSRainbowBlue   = { fg = c.blue },
    TSRainbowViolet = { fg = c.violet500 },
    TSRainbowCyan   = { fg = c.cyan },
  }
end

return M
