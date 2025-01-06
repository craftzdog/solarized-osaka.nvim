local Util = require("solarized-osaka.util")

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
    BufferInactive        = { bg = Util.darken(c.bg_highlight, 0.4), fg = Util.darken(c.violet500, 0.8) },
    BufferInactiveERROR   = { bg = Util.darken(c.bg_highlight, 0.4), fg = Util.darken(c.error, 0.8) },
    BufferInactiveHINT    = { bg = Util.darken(c.bg_highlight, 0.4), fg = Util.darken(c.hint, 0.8) },
    BufferInactiveINFO    = { bg = Util.darken(c.bg_highlight, 0.4), fg = Util.darken(c.info, 0.8) },
    BufferInactiveWARN    = { bg = Util.darken(c.bg_highlight, 0.4), fg = Util.darken(c.warning, 0.8) },
    BufferInactiveIndex   = { bg = Util.darken(c.bg_highlight, 0.4), fg = c.violet500 },
    BufferInactiveMod     = { bg = Util.darken(c.bg_highlight, 0.4), fg = Util.darken(c.warning, 0.8) },
    BufferInactiveSign    = { bg = Util.darken(c.bg_highlight, 0.4), fg = c.bg },
    BufferInactiveTarget  = { bg = Util.darken(c.bg_highlight, 0.4), fg = c.red },
    BufferOffset          = { bg = c.bg_statusline, fg = c.violet500 },
    BufferTabpageFill     = { bg = Util.darken(c.bg_highlight, 0.8), fg = c.violet500 },
    BufferTabpages        = { bg = c.bg_statusline, fg = c.none },
  }
end

return M
