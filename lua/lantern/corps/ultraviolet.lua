local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#9370DB' },  -- Dark bg, Ultraviolet fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#9370DB', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#FF69B4', undercurl = true },  -- Counter: Violet-related, so self or adjacent
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#9370DB' },
    StatusLine = { bg = '#9370DB', fg = '#F5F5F5' },
    -- Treesitter
    ['@keyword'] = { fg = '#9370DB' },
    -- LSP
    DiagnosticError = { fg = '#FF69B4' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },
    DiffDelete = { bg = '#8B0000' },
  }
}
