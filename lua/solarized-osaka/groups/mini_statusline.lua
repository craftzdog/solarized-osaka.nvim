local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineFileinfo    = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineFilename    = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineInactive    = { fg = opts.hide_inactive_statusline and c.bg or c.blue, bg = opts.hide_inactive_statusline and c.none or c.bg_statusline, sp = opts.hide_inactive_statusline and c.border or c.none, underline = opts.hide_inactive_statusline },
    MiniStatuslineModeCommand = { fg = c.base04, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert  = { fg = c.base04, bg = c.green, bold = true },
    MiniStatuslineModeNormal  = { fg = c.base04, bg = c.blue, bold = true },
    MiniStatuslineModeOther   = { fg = c.base04, bg = c.cyan500, bold = true },
    MiniStatuslineModeReplace = { fg = c.base04, bg = c.red, bold = true },
    MiniStatuslineModeVisual  = { fg = c.base04, bg = c.magenta, bold = true },
  }
end

return M
