local M = {}

function M.get(c)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.base01 },
    FlashLabel    = { bg = c.magenta500, bold = true, fg = c.bg },
  }
end

return M
