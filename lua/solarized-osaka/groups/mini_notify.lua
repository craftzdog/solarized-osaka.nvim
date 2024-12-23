local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniNotifyBorder = "FloatBorder",
    MiniNotifyNormal = "NormalFloat",
    MiniNotifyTitle  = "FloatTitle",
  }
end

return M
