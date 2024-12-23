local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader   = { fg = c.blue },
    DashboardCenter   = { fg = c.magenta },
    DashboardFooter   = { fg = c.yellow, italic = true },
    DashboardKey      = { fg = c.orange500 },
    DashboardDesc     = { fg = c.cyan500 },
    DashboardIcon     = { fg = c.cyan500, bold = true },
  }
end

return M
