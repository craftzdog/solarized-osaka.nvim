local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.fg, bg = c.bg },
    --- Border
    NotifyERRORBorder = { fg = c.red900, bg = opts.transparent and c.none or c.bg },
    NotifyWARNBorder  = { fg = c.yellow900, bg = opts.transparent and c.none or c.bg },
    NotifyINFOBorder  = { fg = c.blue900, bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = c.base02, bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = c.violet900, bg = opts.transparent and c.none or c.bg },
    --- Icons
    NotifyERRORIcon   = { fg = c.error },
    NotifyWARNIcon    = { fg = c.warning },
    NotifyINFOIcon    = { fg = c.info },
    NotifyDEBUGIcon   = { fg = c.base01 },
    NotifyTRACEIcon   = { fg = c.violet500 },
    --- Title
    NotifyERRORTitle  = { fg = c.error },
    NotifyWARNTitle   = { fg = c.warning },
    NotifyINFOTitle   = { fg = c.info },
    NotifyDEBUGTitle  = { fg = c.base01 },
    NotifyTRACETitle  = { fg = c.violet500 },
    --- Body
    NotifyERRORBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyWARNBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyINFOBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
  }
end

return M
