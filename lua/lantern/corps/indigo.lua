local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#4B0082' },  -- Dark bg, Indigo fg
    Comment = { fg = '#4B0082' },  -- Self
    Keyword = { fg = '#4B0082', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#FFA500', undercurl = true },  -- Counter: Orange for Indigo
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#4B0082' },
    StatusLine = { bg = '#4B0082', fg = '#F5F5F5' },
    -- Treesitter
    ['@keyword'] = { fg = '#4B0082' },
    -- LSP
    DiagnosticError = { fg = '#FFA500' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
