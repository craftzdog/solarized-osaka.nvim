local M = {}

function M.get(c)
  return {
    FlashBackdrop = { fg = c.base01 },
    FlashLabel = { bg = c.magenta500, bold = true, fg = c.bg },
  }
end

return M
