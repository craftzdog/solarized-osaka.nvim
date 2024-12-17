local M = {}

function M.get(c, opts)
  return {
    MiniAnimateCursor = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = "NormalFloat",
  }
end

return M
