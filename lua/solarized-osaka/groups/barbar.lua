local M = {}

function M.get(c, opts)
  --stylua: ignore
  return {
    BufferCurrent         = { bg = c.bg, fg = c.fg },
    BufferCurrentERROR    = { bg = c.bg, fg = c.error },
    BufferCurrentHINT     = { bg = c.bg, fg = c.hint },
    BufferCurrentINFO     = { bg = c.bg, fg = c.info },
    BufferCurrentWARN     = { bg = c.bg, fg = c.warning },
    BufferCurrentIndex    = { bg = c.bg, fg = c.info },
    BufferCurrentMod      = { bg = c.bg, fg = c.warning },
    BufferCurrentSign     = { bg = c.bg, fg = c.bg },
    BufferCurrentTarget   = { bg = c.bg, fg = c.red },
    BufferAlternate       = { bg = c.base01, fg = c.fg },
    BufferAlternateERROR  = { bg = c.base01, fg = c.error },
    BufferAlternateHINT   = { bg = c.base01, fg = c.hint },
    BufferAlternateIndex  = { bg = c.base01, fg = c.info },
    BufferAlternateINFO   = { bg = c.base01, fg = c.info },
    BufferAlternateMod    = { bg = c.base01, fg = c.warning },
    BufferAlternateSign   = { bg = c.base01, fg = c.info },
    BufferAlternateTarget = { bg = c.base01, fg = c.red },
    BufferAlternateWARN   = { bg = c.base01, fg = c.warning },
    BufferVisible         = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleERROR    = { bg = c.bg_statusline, fg = c.error },
    BufferVisibleHINT     = { bg = c.bg_statusline, fg = c.hint },
    BufferVisibleINFO     = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleWARN     = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleIndex    = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod      = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign     = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget   = { bg = c.bg_statusline, fg = c.red },
    BufferInactive        = { bg = c.bg, fg = c.violet600 },
    BufferInactiveERROR   = { bg = c.bg, fg = c.red600 },
    BufferInactiveHINT    = { bg = c.bg, fg = c.cyan600 },
    BufferInactiveINFO    = { bg = c.bg, fg = c.blue600 },
    BufferInactiveWARN    = { bg = c.bg, fg = c.yellow600 },
    BufferInactiveIndex   = { bg = c.bg, fg = c.violet500 },
    BufferInactiveMod     = { bg = c.bg, fg = c.yellow600 },
    BufferInactiveSign    = { bg = c.bg, fg = c.bg },
    BufferInactiveTarget  = { bg = c.bg, fg = c.red },
    BufferOffset          = { bg = c.bg_statusline, fg = c.violet500 },
    BufferTabpageFill     = { bg = c.bg_highlight, fg = c.violet500 },
    BufferTabpages        = { bg = c.bg_statusline, fg = c.none },
  }
end

return M
