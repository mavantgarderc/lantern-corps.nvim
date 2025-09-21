local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#111111' },  -- Dark bg, Black fg (low saturation)
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#111111', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#F5F5F5', undercurl = true },  -- Counter: White for Black
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#111111' },
    StatusLine = { bg = '#111111', fg = '#F5F5F5' },
    -- Treesitter
    ['@keyword'] = { fg = '#111111' },
    -- LSP
    DiagnosticError = { fg = '#F5F5F5' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
