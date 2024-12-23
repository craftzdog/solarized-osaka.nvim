local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineFileinfo    = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineFilename    = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineInactive    = { fg = opts.hide_inactive_statusline and c.bg or c.blue, bg = opts.hide_inactive_statusline and c.none or c.bg_statusline, sp = opts.hide_inactive_statusline and c.border or c.none, underline = opts.hide_inactive_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert  = { fg = c.black, bg = c.green, bold = true },
    MiniStatuslineModeNormal  = { fg = c.black, bg = c.blue, bold = true },
    MiniStatuslineModeOther   = { fg = c.black, bg = c.cyan500, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = true },
    MiniStatuslineModeVisual  = { fg = c.black, bg = c.magenta, bold = true },
  }
end

return M
