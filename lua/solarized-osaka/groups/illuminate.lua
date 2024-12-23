local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    illuminatedWord      = { bg = c.violet900 },
    illuminatedCurWord   = { bg = c.violet900 },
    IlluminatedWordText  = { bg = c.violet900 },
    IlluminatedWordRead  = { bg = c.magenta900 },
    IlluminatedWordWrite = { bg = c.magenta900 },
  }
end

return M
