local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniIconsAzure  = { fg = c.blue300 },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsCyan   = { fg = c.cyan },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsGrey   = { fg = c.base2 },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.violet },
    MiniIconsRed    = { fg = c.red },
    MiniIconsYellow = { fg = c.yellow },
  }
end

return M
