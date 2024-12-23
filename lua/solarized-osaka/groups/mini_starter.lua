local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.yellow, italic = true },
    MiniStarterHeader     = { fg = c.blue },
    MiniStarterInactive   = { fg = c.base01, style = opts.styles.comments },
    MiniStarterItem       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.base01 },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterSection    = { fg = c.violet500 },
    MiniStarterQuery      = { fg = c.info },
  }
end

return M
