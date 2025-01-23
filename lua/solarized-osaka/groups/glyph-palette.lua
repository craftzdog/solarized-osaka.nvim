local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red500 },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.cyan },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red },
  }
end

return M
