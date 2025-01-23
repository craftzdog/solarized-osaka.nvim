local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    Comment                  = { fg = c.base01, style = opts.styles.comments }, -- any comment
    Constant                 = { fg = c.cyan500 }, -- (preferred) any constant
    String                   = { fg = c.cyan500 }, --   a string constant: "this is a string"
    Character                = "Constant", --  a character constant: 'c', '\n'
    -- Number        = { }, --   a number constant: 234, 0xff
    -- Boolean       = { }, --  a boolean constant: TRUE, false
    -- Float         = { }, --    a floating point constant: 2.3e10

    Identifier               = { fg = c.blue500, style = opts.styles.variables }, -- (preferred) any variable name
    Function                 = { fg = c.blue500, style = opts.styles.functions }, -- function name (also: methods for classes)

    Statement                = { fg = c.green500 }, -- (preferred) any statement
    -- Conditional   = { }, --  if, then, else, endif, switch, etc.
    -- Repeat        = { }, --   for, do, while, etc.
    -- Label         = { }, --    case, default, etc.
    Operator                 = { fg = c.green500 }, -- "sizeof", "+", "*", etc.
    Keyword                  = { fg = c.green500, style = opts.styles.keywords }, --  any other keyword
    -- Exception     = { }, --  try, catch, throw

    PreProc                  = { fg = c.red500 }, -- (preferred) generic Preprocessor
    -- Include       = { }, --  preprocessor #include
    -- Define        = { }, --   preprocessor #define
    -- Macro         = { }, --    same as Define
    -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

    Type                     = { fg = c.yellow500 }, -- (preferred) int, long, char, etc.
    -- StorageClass  = { }, -- static, register, volatile, etc.
    -- Structure     = { }, --  struct, union, enum, etc.
    -- Typedef       = { }, --  A typedef

    Special                  = { fg = c.orange500 }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    Debug                    = { fg = c.orange500 }, --    debugging statements
    htmlH1                   = { fg = c.magenta500, bold = true },
    htmlH2                   = { fg = c.blue500, bold = true },

    -- mkdHeading = { fg = c.orange, bold = true },
    mkdCode                  = { bg = c.green900 },
    mkdCodeDelimiter         = { fg = c.base0, bg = c.green700 },
    mkdCodeStart             = { fg = c.orange500, bold = true },
    mkdCodeEnd               = { fg = c.orange500, bold = true },
    -- mkdLink = { fg = c.blue, underline = true },

    markdownHeadingDelimiter = { fg = c.orange500, bold = true },
    markdownCode             = { fg = c.yellow500, bg = c.green900 },
    markdownCodeBlock        = { fg = c.yellow500, bg = c.green900 },
    markdownH1               = { fg = c.magenta500, bold = true },
    markdownH2               = { fg = c.violet500, bold = true },
    markdownLinkText         = { fg = c.blue500, underline = true },
  }
end

return M
