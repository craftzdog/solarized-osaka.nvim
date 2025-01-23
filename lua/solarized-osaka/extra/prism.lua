local util = require("solarized-osaka.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [[
module.exports =  {
  plain: {
    color: "${fg}",
    backgroundColor: "${bg}",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "${red}",
      },
    },
    {
      types: ["function"],
      style: {
        color: "${blue}",
      },
    },
    {
      types: ["symbol"],
      style: {
        color: "${magenta}",
      },
    },
    {
      types: ["punctuation"],
      style: {
        color: "${magenta}",
      },
    },
    {
      types: ["string", "char", "tag", "selector"],
      style: {
        color: "${green}",
      },
    },
    {
      types: ["keyword"],
      style: {
        color: "${violet500}",
      },
    },
    {
      types: ["operator"],
      style: {
        color: "${cyan}",
      },
    },
    {
      types: ["constant", "boolean"],
      style: {
        color: "${orange}",
      },
    },
    {
      types: ["variable"],
      style: {
        color: "${fg}",
      },
    },
    {
      style: {
        color: "${base01}",
        fontStyle: "italic",
      },
    },
    {
      types: ["attr-name"],
      style: {
        color: "rgb(241, 250, 140)",
      },
    },
  ],
};
]]

return M
