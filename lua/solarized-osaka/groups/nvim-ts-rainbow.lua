local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    rainbowcol1 = { fg = c.red500 },
    rainbowcol2 = { fg = c.orange500 },
    rainbowcol3 = { fg = c.yellow500 },
    rainbowcol4 = { fg = c.green500 },
    rainbowcol5 = { fg = c.cyan500 },
    rainbowcol6 = { fg = c.blue500 },
    rainbowcol7 = { fg = c.magenta500 },
  }
end

return M
