local M = {}

--- Raises a color's perceptual lightness without draining its colorfulness.
---
---@param hex string
---@param amount number between 0 and 1, from unchanged to white
---@return string
function M.brighten(hex, amount)
  if hex == "NONE" then
    return hex
  end
  local hsluv = require("solarized-osaka.hsluv")
  local lch = hsluv.rgb_to_lch(hsluv.hex_to_rgb(hex))
  local chroma, hue = lch[2], lch[3]
  local ceiling_before = hsluv.max_safe_chroma_for_lh(lch[1], hue)

  lch[1] = lch[1] + (100 - lch[1]) * amount

  -- Colors already sitting on the gamut boundary should ride it up rather than
  -- stay pinned to their old chroma, so track the ceiling as well as the floor.
  local ceiling = hsluv.max_safe_chroma_for_lh(lch[1], hue)
  local scaled = ceiling_before > 0 and chroma * ceiling / ceiling_before or 0
  lch[2] = math.min(math.max(chroma, scaled), ceiling)

  local rgb = hsluv.lch_to_rgb(lch)
  for i = 1, 3 do
    rgb[i] = math.min(math.max(rgb[i], 0), 1)
  end
  return hsluv.rgb_to_hex(rgb)
end

-- Simple string interpolation.
--
-- Example template: "${name} is ${value}"
--
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
  return (
    str:gsub("($%b{})", function(w)
      return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
    end)
  )
end

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h:h")

function M.mod(modname)
  if package.loaded[modname] then
    return package.loaded[modname]
  end
  local ret = loadfile(me .. "/" .. modname:gsub("%.", "/") .. ".lua")()
  package.loaded[modname] = ret
  return ret
end

function M.resolve(groups)
  for _, hl in pairs(groups) do
    if type(hl.style) == "table" then
      for k, v in pairs(hl.style) do
        hl[k] = v
      end
      hl.style = nil
    end
  end
  return groups
end

return M
