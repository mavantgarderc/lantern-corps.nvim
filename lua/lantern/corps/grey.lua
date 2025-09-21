local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#808080' },  -- Dark bg, Grey fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#808080', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#111111', undercurl = true },  -- Counter: Black-ish
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#808080' },
    StatusLine = { bg = '#808080', fg = '#F5F5F5' },
    -- Treesitter
    ['@keyword'] = { fg = '#808080' },
    -- LSP
    DiagnosticError = { fg = '#111111' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
