local M = {}

function M.get(c, opts)
  return {
    Sneak = { fg = c.bg_highlight, bg = c.magenta },
    SneakScope = { bg = c.base03 },
  }
end

return M
