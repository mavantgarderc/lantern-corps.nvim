local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#008000' },  -- Dark bg, Green fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#008000', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#F5F5F5', undercurl = true },  -- Counter: White (neutral for Green)
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#008000' },
    StatusLine = { bg = '#008000', fg = '#F5F5F5' },
    -- Treesitter
    ['@keyword'] = { fg = '#008000' },
    -- LSP
    DiagnosticError = { fg = '#F5F5F5' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },  -- Green adds
    DiffDelete = { bg = '#8B0000' },  -- Red deletes
  }
}



