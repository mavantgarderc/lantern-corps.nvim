local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#DAA520' },  -- Dark bg, Gold fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#DAA520', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#FFD700', undercurl = true },  -- Counter: Yellow-adjacent
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#DAA520' },
    StatusLine = { bg = '#DAA520', fg = '#000000' },
    -- Treesitter
    ['@keyword'] = { fg = '#DAA520' },
    -- LSP
    DiagnosticError = { fg = '#FFD700' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
