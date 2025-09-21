local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#FFD700' },  -- Dark bg, Yellow fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#FFD700', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#87CEEB', undercurl = true },  -- Counter: Blue for Yellow
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#FFD700' },
    StatusLine = { bg = '#FFD700', fg = '#000000' },
    TabLine = { bg = '#111111', fg = '#FFD700' },
    Search = { bg = '#FFD700', fg = '#000000' },
    -- Treesitter
    ['@keyword'] = { fg = '#FFD700' },
    ['@function'] = { fg = '#87CEEB' },
    -- LSP
    DiagnosticError = { fg = '#87CEEB' },  -- Counter
    DiagnosticWarn = { fg = '#FFA500' },
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
    DiffChange = { bg = '#4B0082' },
  }
}
