local M = {}

function M.get(c, options)
  -- stylua: ignore
  return {
    ColorColumn                 = { bg = c.base02 }, -- used for the columns set with 'colorcolumn'
    Conceal                     = { fg = c.blue500 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                      = { fg = c.base03, bg = c.base0 }, -- character under the cursor
    lCursor                     = { fg = c.base03, bg = c.base00 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = { fg = c.base03, bg = c.base0 }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.base02 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.base03 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.blue500 }, -- directory names (and other special names in listings)
    DiffAdd                     = { fg = c.green500, bg = c.base02, bold = true }, -- diff mode: Added line |diff.txt|
    DiffChange                  = { fg = c.yellow500, bg = c.base02, bold = true }, -- diff mode: Changed line |diff.txt|
    DiffDelete                  = { fg = c.red500, bg = c.base02, bold = true }, -- diff mode: Deleted line |diff.txt|
    DiffText                    = { fg = c.blue500, bg = c.base02, bold = true }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                 = { fg = c.base01 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal
    ErrorMsg                    = { fg = c.red500, reverse = true }, -- error messages on the command line
    VertSplit                   = { fg = c.base00 }, -- the column separating vertically split windows
    WinSeparator                = { fg = c.base02, bold = true }, -- the column separating vertically split windows
    Folded                      = { fg = c.base0, bg = c.base02, bold = true }, -- line used for closed folds
    FoldColumn                  = { fg = c.base0 }, -- 'foldcolumn'
    SignColumn                  = { fg = c.base0 }, -- column where |signs| are displayed
    SignColumnSB                = { fg = c.base0 }, -- column where |signs| are displayed
    Substitute                  = { fg = c.base04, bg = c.red500 }, -- |:substitute| replacement text highlighting
    LineNr                      = { fg = c.yellow700, bg = options.transparent and c.none or c.bg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr                = { fg = c.orange500, sp = c.base1 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen                  = { fg = c.red100, bg = c.red500, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                     = { fg = c.blue500 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                     = { fg = c.base01 }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg                     = { fg = c.blue500 }, -- |more-prompt|
    NonText                     = { fg = c.base00, bold = true }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                      = { fg = c.base0, bg = options.transparent and c.none or c.bg }, -- normal text
    NormalNC                    = { fg = c.base00, bg = options.transparent and c.none or options.dim_inactive and c.base04 or c.bg }, -- normal text in non-current windows
    NormalSB                    = { fg = c.base01, bg = c.bg_sidebar }, -- normal text in sidebar
    NormalFloat                 = { fg = c.base0, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder                 = { fg = c.yellow700, bg = c.bg_float },
    FloatTitle                  = { fg = c.base2, bg = c.bg_float },
    Pmenu                       = { fg = c.base0, bg = c.base02 }, -- Popup menu: normal item.
    PmenuSel                    = { fg = c.base01, bg = c.base2, reverse = true }, -- Popup menu: selected item.
    PmenuSbar                   = { fg = c.base02, reverse = true }, -- Popup menu: scrollbar.
    PmenuThumb                  = { fg = c.base0, reverse = true }, -- Popup menu: Thumb of the scrollbar.
    Question                    = { fg = c.cyan500, bold = true }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine                = { bg = c.blue700, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                      = { fg = c.yellow500, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                   = { fg = c.base2, bg = c.orange500 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch                   = "IncSearch",
    SpecialKey                  = { fg = c.base00 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                    = { sp = c.red500, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                    = { sp = c.violet500, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                  = { sp = c.cyan500, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                   = { sp = c.yellow500, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                  = { fg = c.base1, bg = c.base03 }, -- status line of current window
    StatusLineNC                = { fg = options.hide_inactive_statusline and c.bg or c.base0, bg = options.hide_inactive_statusline and c.none or c.base04, sp = options.hide_inactive_statusline and c.border or c.none, underline = options.hide_inactive_statusline and true or false }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                     = { fg = c.base0, bg = c.base02, sp = c.base0 }, -- tab pages line, not active tab page label
    TabLineFill                 = { fg = c.base0, bg = c.base02 }, -- tab pages line, where there are no labels
    TabLineSel                  = { fg = c.yellow500, bg = c.bg }, -- tab pages line, active tab page label
    Title                       = { fg = c.orange500, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual                      = { bg = c.base02 }, -- Visual mode selection
    VisualNOS                   = { bg = c.base03, reverse = true }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                  = { fg = c.orange500, bold = true }, -- warning messages
    Whitespace                  = { fg = c.base01 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                    = { fg = c.base2, bg = c.base02, reverse = true }, -- current match in 'wildmenu' completion
    WinBar                      = "StatusLine", -- window bar
    WinBarNC                    = "StatusLineNC", -- window bar in inactive windows

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText            = { bg = c.magenta900 }, -- used for highlighting "text" references
    LspReferenceRead            = { bg = c.magenta900 }, -- used for highlighting "read" references
    LspReferenceWrite           = { bg = c.magenta900 }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = c.base03, bold = true },
    LspCodeLens                 = { fg = c.base01 },
    LspInlayHint                = { bg = c.violet900, fg = c.violet500 },
    LspInfoBorder               = { fg = c.base02, bg = c.bg_float },

    DiagnosticError             = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary       = { fg = c.base00 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError  = { bg = c.red900, fg = c.red500 }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { bg = c.yellow900, fg = c.yellow500 }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { bg = c.blue900, fg = c.blue500 }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { bg = c.cyan900, fg = c.cyan500 }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError    = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    healthError                 = { fg = c.error },
    healthSuccess               = { fg = c.cyan },
    healthWarning               = { fg = c.warning },

    diffAdded                   = { fg = c.green500 },
    diffRemoved                 = { fg = c.red500 },
    diffChanged                 = { fg = c.yellow500 },
    diffOldFile                 = { fg = c.violet500 },
    diffNewFile                 = { fg = c.orange500 },
    diffFile                    = { fg = c.blue500 },
    diffLine                    = { fg = c.base01 },
    diffIndexLine               = { fg = c.magenta500 },
  }
end

return M
