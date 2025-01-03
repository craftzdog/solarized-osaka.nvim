local M = {}

function M.get(c)
  -- stylua: ignore
  return {
    TelescopeBorder = { fg = c.base02, bg = c.bg_float },
    TelescopeNormal = { fg = c.base0, bg = c.bg_float },
  }
end

return M
