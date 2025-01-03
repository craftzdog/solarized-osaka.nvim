local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniHipatternsFixme = { fg = c.bg, bg = c.error, bold = true },
    MiniHipatternsHack  = { fg = c.bg, bg = c.warning, bold = true },
    MiniHipatternsNote  = { fg = c.bg, bg = c.info, bold = true },
    MiniHipatternsTodo  = { fg = c.bg, bg = c.hint, bold = true },
  }
end

return M
