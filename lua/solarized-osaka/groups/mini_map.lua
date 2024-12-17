local M = {}

function M.get(c, opts)
  return {
    MiniMapNormal = "NormalFloat",
    MiniMapSymbolCount = "Special",
    MiniMapSymbolLine = "Title",
    MiniMapSymbolView = "Delimiter",
  }
end

return M
