local util = require('lantern.util')

return {
  highlights = {
    Normal = { bg = '#000000', fg = '#8B0000' },  -- Dark bg, Red fg
    Comment = { fg = '#4B0082' },  -- Indigo
    Keyword = { fg = '#8B0000', bold = true },
    String = { fg = '#FF69B4' },
    Error = { fg = '#FF69B4', undercurl = true },  -- Counter: Violet for Red theme
    LineNr = { fg = '#333333' },
    CursorLine = { bg = '#8B0000' },
    StatusLine = { bg = '#8B0000', fg = '#F5F5F5' },
    -- Treesitter
    ['@keyword'] = { fg = '#8B0000' },
    -- LSP
    DiagnosticError = { fg = '#FF69B4' },  -- Counter
    -- Diff
    DiffAdd = { bg = '#008000' },  -- Green willpower adds
    DiffDelete = { bg = '#8B0000' },  -- Red rage deletes
  }
}
