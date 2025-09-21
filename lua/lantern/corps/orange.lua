local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#FFA500' },  -- Dark bg, Orange fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#FFA500', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#4B0082', undercurl = true },  -- Counter: Indigo for Orange
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#FFA500' },
    StatusLine = { bg = '#FFA500', fg = '#000000' },
    TabLine = { bg = '#111111', fg = '#FFA500' },
    Search = { bg = '#FFD700', fg = '#000000' },
    -- Treesitter
    ['@keyword'] = { fg = '#FFA500' },
    ['@function'] = { fg = '#87CEEB' },
    -- LSP
    DiagnosticError = { fg = '#4B0082' },  -- Counter
    DiagnosticWarn = { fg = '#FFA500' },
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
    DiffChange = { bg = '#4B0082' },
  }
}
