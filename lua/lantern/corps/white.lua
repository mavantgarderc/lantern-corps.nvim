local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#F5F5F5' },  -- Dark bg, White fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#F5F5F5', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#111111', undercurl = true },  -- Counter: Black for White
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#F5F5F5' },
    StatusLine = { bg = '#F5F5F5', fg = '#000000' },
    -- Treesitter
    ['@keyword'] = { fg = '#F5F5F5' },
    -- LSP
    DiagnosticError = { fg = '#111111' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
