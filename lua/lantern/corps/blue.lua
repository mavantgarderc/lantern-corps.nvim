local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#87CEEB' },  -- Dark bg, Blue fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#87CEEB', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#FFD700', undercurl = true },  -- Counter: Yellow for Blue
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#87CEEB' },
    StatusLine = { bg = '#87CEEB', fg = '#000000' },
    -- Treesitter
    ['@keyword'] = { fg = '#87CEEB' },
    -- LSP
    DiagnosticError = { fg = '#FFD700' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
