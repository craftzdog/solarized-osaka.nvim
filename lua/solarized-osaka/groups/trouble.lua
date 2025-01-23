local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    TroubleText   = { fg = c.base0 },
    TroubleCount  = { fg = c.magenta500 },
    TroubleNormal = { fg = c.base0 },
  }
end

return M
