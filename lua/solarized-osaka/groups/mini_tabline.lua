local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniTablineCurrent         = { fg = c.fg, bg = c.base02, bold = true },
    MiniTablineFill            = { bg = c.black },
    MiniTablineHidden          = { fg = c.violet500, bg = c.bg_statusline },
    MiniTablineModifiedCurrent = { fg = c.base02, bg = c.fg, bold = true },
    MiniTablineModifiedHidden  = { fg = c.bg_statusline, bg = c.violet500 },
    MiniTablineModifiedVisible = { fg = c.bg_statusline, bg = c.fg },
    MiniTablineTabpagesection  = { bg = c.bg_statusline, fg = c.none },
    MiniTablineVisible         = { fg = c.fg, bg = c.bg_statusline },
  }
end

return M
