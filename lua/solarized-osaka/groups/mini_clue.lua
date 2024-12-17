local M = {}

function M.get(c, opts)
  return {
    MiniClueBorder = "FloatBorder",
    MiniClueDescGroup = "DiagnosticFloatingWarn",
    MiniClueDescSingle = "NormalFloat",
    MiniClueNextKey = "DiagnosticFloatingHint",
    MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
    MiniClueSeparator = "DiagnosticFloatingInfo",
    MiniClueTitle = "FloatTitle",
  }
end

return M
