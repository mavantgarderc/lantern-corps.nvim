local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#FF69B4' },  -- Dark bg, Violet fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#FF69B4', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#8B0000', undercurl = true },  -- Counter: Red for Violet
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#FF69B4' },
    StatusLine = { bg = '#FF69B4', fg = '#000000' },
    -- Treesitter
    ['@keyword'] = { fg = '#FF69B4' },
    -- LSP
    DiagnosticError = { fg = '#8B0000' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
